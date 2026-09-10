.class public final Lorg/apache/poi/hssf/usermodel/HSSFDataFormatter;
.super Lorg/apache/poi/ss/usermodel/DataFormatter;
.source "HSSFDataFormatter.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 79
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFDataFormatter;-><init>(Ljava/util/Locale;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 0
    .param p1, "locale"    # Ljava/util/Locale;

    .line 72
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/usermodel/DataFormatter;-><init>(Ljava/util/Locale;)V

    .line 73
    return-void
.end method
