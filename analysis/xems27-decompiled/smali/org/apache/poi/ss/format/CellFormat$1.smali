.class final Lorg/apache/poi/ss/format/CellFormat$1;
.super Lorg/apache/poi/ss/format/CellFormat;
.source "CellFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/format/CellFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .line 107
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/ss/format/CellFormat;-><init>(Ljava/lang/String;Lorg/apache/poi/ss/format/CellFormat$1;)V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Lorg/apache/poi/ss/format/CellFormatResult;
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;

    .line 110
    new-instance v0, Lorg/apache/poi/ss/format/CellGeneralFormatter;

    invoke-direct {v0}, Lorg/apache/poi/ss/format/CellGeneralFormatter;-><init>()V

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/format/CellGeneralFormatter;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "text":Ljava/lang/String;
    new-instance v1, Lorg/apache/poi/ss/format/CellFormatResult;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lorg/apache/poi/ss/format/CellFormatResult;-><init>(ZLjava/lang/String;Ljava/awt/Color;)V

    return-object v1
.end method
