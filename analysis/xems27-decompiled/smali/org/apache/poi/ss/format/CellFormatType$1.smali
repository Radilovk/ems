.class final enum Lorg/apache/poi/ss/format/CellFormatType$1;
.super Lorg/apache/poi/ss/format/CellFormatType;
.source "CellFormatType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/format/CellFormatType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/ss/format/CellFormatType;-><init>(Ljava/lang/String;ILorg/apache/poi/ss/format/CellFormatType$1;)V

    return-void
.end method


# virtual methods
.method formatter(Ljava/lang/String;)Lorg/apache/poi/ss/format/CellFormatter;
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    .line 30
    new-instance v0, Lorg/apache/poi/ss/format/CellGeneralFormatter;

    invoke-direct {v0}, Lorg/apache/poi/ss/format/CellGeneralFormatter;-><init>()V

    return-object v0
.end method

.method isSpecial(C)Z
    .locals 1
    .param p1, "ch"    # C

    .line 33
    const/4 v0, 0x0

    return v0
.end method
