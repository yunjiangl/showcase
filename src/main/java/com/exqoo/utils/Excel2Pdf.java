package com.exqoo.utils;

import com.aspose.cells.License;
import com.aspose.cells.SaveFormat;
import com.aspose.cells.Workbook;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

/**
 * Created by wangyi on 2017/11/9.
 */
public class Excel2Pdf {
    public static boolean getLicense() {
        boolean result = false;
        try {
            InputStream is = Excel2Pdf.class.getClassLoader().getResourceAsStream("license.xml"); //  license.xml应放在..\WebRoot\WEB-INF\classes路径下
            License aposeLic = new License();
            aposeLic.setLicense(is);
            result = true;
        }
        catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }


    public static void excel2pdf(String Address) {
        if (!getLicense()) {          // 验证License 若不验证则转化出的pdf文档会有水印产生
            return;
        }
        try {
            File pdfFile = new File("H:/jar/pdf2.pdf");// 输出路径
            Workbook wb = new Workbook(Address);// 原始excel路径
            FileOutputStream fileOS = new FileOutputStream(pdfFile);
            wb.save(fileOS, SaveFormat.PDF);
            fileOS.close();
        }
        catch (Exception e) {
            e.printStackTrace();
        }
    }
    public static void excel2pdf(InputStream inputStream, OutputStream outputStream) throws Exception{
        if (!getLicense()) {          // 验证License 若不验证则转化出的pdf文档会有水印产生
            return;
        }
        Workbook wb = new Workbook(inputStream);
        wb.save(outputStream, SaveFormat.PDF);
    }
}
