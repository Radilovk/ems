.class final enum Lorg/apache/poi/ss/format/CellFormatType$3;
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

    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/ss/format/CellFormatType;-><init>(Ljava/lang/String;ILorg/apache/poi/ss/format/CellFormatType$1;)V

    return-void
.end method


# virtual methods
.method formatter(Ljava/lang/String;)Lorg/apache/poi/ss/format/CellFormatter;
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    .line 51
    new-instance v0, Lorg/apache/poi/ss/format/CellDateFormatter;

    invoke-direct {v0, p1}, Lorg/apache/poi/ss/format/CellDateFormatter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method isSpecial(C)Z
    .locals 1
    .param p1, "ch"    # C

    .line 48
    const/16 v0, 0x27

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7f

    if-gt p1, v0, :cond_0

    invoke-static {p1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
