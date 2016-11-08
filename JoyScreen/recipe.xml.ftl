<?xml version="1.0"?>
<recipe>
    <instantiate from="root/res/layout/simple_view.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/layout/${screenViewLayoutName}.xml" />
    <open file="${escapeXmlAttribute(resOut)}/layout/${screenViewLayoutName}.xml" />

    <instantiate from="root/src/app_package/SimpleView.java.ftl"
                 to="${escapeXmlAttribute(srcOut)}/${screenViewClass}.java" />
    <open file="${escapeXmlAttribute(srcOut)}/${screenViewClass}.java" />

    <instantiate from="root/src/app_package/SimpleScreen.java.ftl"
                 to="${escapeXmlAttribute(srcOut)}/${screenClass}.java" />
    <open file="${escapeXmlAttribute(srcOut)}/${screenClass}.java" />
</recipe>
