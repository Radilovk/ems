.class abstract Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor$HelperPropertySet;
.super Lorg/apache/poi/hpsf/SpecialPropertySet;
.source "HPSFPropertiesExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "HelperPropertySet"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/hpsf/SpecialPropertySet;-><init>(Lorg/apache/poi/hpsf/MutablePropertySet;)V

    .line 150
    return-void
.end method

.method public static getPropertyValueText(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "val"    # Ljava/lang/Object;

    .prologue
    .line 152
    if-nez p0, :cond_0

    .line 153
    const-string v0, "(not set)"

    .line 155
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lorg/apache/poi/hpsf/SpecialPropertySet;->getPropertyStringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
