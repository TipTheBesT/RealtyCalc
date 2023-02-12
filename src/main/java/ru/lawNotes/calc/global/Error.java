package ru.lawNotes.calc;

public class Error {

    public static String getError(String title, String text) {
        String result = "";
        result +="<div class=\"error\"> " +
                "<div class=\"title-error\">" +
                "<h3>" + title + "</h3>" +
                "</div>" +
                "<div class=\"content-error\">" +
                text +
                "</div>" +
                "</div>";
        return result;
    }
}
