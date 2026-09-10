.class public final Lorg/apache/poi/hssf/usermodel/HSSFFooter;
.super Lorg/apache/poi/hssf/usermodel/HeaderFooter;
.source "HSSFFooter.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/Footer;


# instance fields
.field private final _psb:Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;


# direct methods
.method protected constructor <init>(Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;)V
    .locals 0
    .param p1, "psb"    # Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    .line 37
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/HeaderFooter;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFFooter;->_psb:Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    .line 39
    return-void
.end method


# virtual methods
.method protected getRawText()Ljava/lang/String;
    .locals 2

    .line 42
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFooter;->_psb:Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->getFooter()Lorg/apache/poi/hssf/record/FooterRecord;

    move-result-object v0

    .line 43
    .local v0, "hf":Lorg/apache/poi/hssf/record/FooterRecord;
    if-nez v0, :cond_0

    .line 44
    const-string v1, ""

    return-object v1

    .line 46
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/FooterRecord;->getText()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected setHeaderFooterText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFooter;->_psb:Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->getFooter()Lorg/apache/poi/hssf/record/FooterRecord;

    move-result-object v0

    .line 52
    .local v0, "hfr":Lorg/apache/poi/hssf/record/FooterRecord;
    if-nez v0, :cond_0

    .line 53
    new-instance v1, Lorg/apache/poi/hssf/record/FooterRecord;

    invoke-direct {v1, p1}, Lorg/apache/poi/hssf/record/FooterRecord;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 54
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFFooter;->_psb:Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->setFooter(Lorg/apache/poi/hssf/record/FooterRecord;)V

    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/FooterRecord;->setText(Ljava/lang/String;)V

    .line 58
    :goto_0
    return-void
.end method
