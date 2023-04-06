<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128536158/13.1.4%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/E1123)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
# Grid View for ASP.NET Web Forms - How to display an image in a grid's column
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/e1123/)**
<!-- run online end -->

This example demonstrates how to use a column's `ImageUrlFormatString` property to display an image in the grid.

## Overview

To display an image from a particular data source or folder, add a [GridViewDataImageColumn](https://docs.devexpress.com/AspNet/DevExpress.Web.GridViewDataImageColumn) and use its [ImageUrlFormatString](https://docs.devexpress.com/AspNet/DevExpress.Web.ImageEditPropertiesBase.ImageUrlFormatString) property to specify a path to the image storage.

```aspx
<dx:ASPxGridView id="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="XmlDataSource1">
    <Columns>
        <!-- ... -->
        <dx:GridViewDataImageColumn FieldName="FileName" VisibleIndex="3" Caption="Image">
            <PropertiesImage ImageUrlFormatString="Images/{0}" />
        </dx:GridViewDataImageColumn>
    </Columns>
</dx:ASPxGridView>
<asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/App_Data/Images.xml" />
```

## Files to Review

* [Default.aspx](./CS/Site/Default.aspx) (VB: [Default.aspx](./VB/Site/Default.aspx))

## More Examples

* [How to display an icon in a grid cell](https://github.com/DevExpress-Examples/how-to-display-an-icon-in-a-grid-cell-e1967)
