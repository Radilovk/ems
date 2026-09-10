.class public final Lorg/apache/poi/hssf/usermodel/HSSFHeader;
.super Lorg/apache/poi/hssf/usermodel/HeaderFooter;
.source "HSSFHeader.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/Header;


# instance fields
.field private final _psb:Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;


# direct methods
.method protected constructor <init>(Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;)V
    .locals 0
    .param p1, "psb"    # Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    .line 38
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/HeaderFooter;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFHeader;->_psb:Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    .line 40
    return-void
.end method


# virtual methods
.method protected getRawText()Ljava/lang/String;
    .locals 2

    .line 43
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFHeader;->_psb:Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->getHeader()Lorg/apache/poi/hssf/record/HeaderRecord;

    move-result-object v0

    .line 44
    .local v0, "hf":Lorg/apache/poi/hssf/record/HeaderRecord;
    if-nez v0, :cond_0

    .line 45
    const-string v1, ""

    return-object v1

    .line 47
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/HeaderRecord;->getText()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected setHeaderFooterText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFHeader;->_psb:Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->getHeader()Lorg/apache/poi/hssf/record/HeaderRecord;

    move-result-object v0

    .line 53
    .local v0, "hfr":Lorg/apache/poi/hssf/record/HeaderRecord;
    if-nez v0, :cond_0

    .line 54
    new-instance v1, Lorg/apache/poi/hssf/record/HeaderRecord;

    invoke-direct {v1, p1}, Lorg/apache/poi/hssf/record/HeaderRecord;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 55
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFHeader;->_psb:Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->setHeader(Lorg/apache/poi/hssf/record/HeaderRecord;)V

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/HeaderRecord;->setText(Ljava/lang/String;)V

    .line 59
    :goto_0
    return-void
.end method
