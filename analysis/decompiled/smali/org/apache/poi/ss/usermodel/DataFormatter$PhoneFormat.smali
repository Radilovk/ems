.class final Lorg/apache/poi/ss/usermodel/DataFormatter$PhoneFormat;
.super Ljava/text/Format;
.source "DataFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/usermodel/DataFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PhoneFormat"
.end annotation


# static fields
.field private static final df:Ljava/text/DecimalFormat;

.field public static final instance:Ljava/text/Format;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 987
    new-instance v0, Lorg/apache/poi/ss/usermodel/DataFormatter$PhoneFormat;

    invoke-direct {v0}, Lorg/apache/poi/ss/usermodel/DataFormatter$PhoneFormat;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/usermodel/DataFormatter$PhoneFormat;->instance:Ljava/text/Format;

    .line 988
    const-string v0, "##########"

    invoke-static {v0}, Lorg/apache/poi/ss/usermodel/DataFormatter;->createIntegerOnlyFormat(Ljava/lang/String;)Ljava/text/DecimalFormat;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/DataFormatter$PhoneFormat;->df:Ljava/text/DecimalFormat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 989
    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    .line 991
    return-void
.end method

.method public static format(Ljava/lang/Number;)Ljava/lang/String;
    .locals 9
    .param p0, "num"    # Ljava/lang/Number;

    .prologue
    const/4 v8, 0x0

    .line 995
    sget-object v6, Lorg/apache/poi/ss/usermodel/DataFormatter$PhoneFormat;->df:Ljava/text/DecimalFormat;

    invoke-virtual {v6, p0}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 996
    .local v1, "result":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 998
    .local v2, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 999
    .local v0, "len":I
    const/4 v6, 0x4

    if-gt v0, v6, :cond_0

    .line 1014
    .end local v1    # "result":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1003
    .restart local v1    # "result":Ljava/lang/String;
    :cond_0
    add-int/lit8 v6, v0, -0x4

    invoke-virtual {v1, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1004
    .local v5, "seg3":Ljava/lang/String;
    add-int/lit8 v6, v0, -0x7

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v7, v0, -0x4

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1005
    .local v4, "seg2":Ljava/lang/String;
    add-int/lit8 v6, v0, -0xa

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v7, v0, -0x7

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1007
    .local v3, "seg1":Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 1008
    const/16 v6, 0x28

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ") "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1010
    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 1011
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const/16 v7, 0x2d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1013
    :cond_2
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1014
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    .prologue
    .line 1019
    check-cast p1, Ljava/lang/Number;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-static {p1}, Lorg/apache/poi/ss/usermodel/DataFormatter$PhoneFormat;->format(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .prologue
    .line 1024
    sget-object v0, Lorg/apache/poi/ss/usermodel/DataFormatter$PhoneFormat;->df:Ljava/text/DecimalFormat;

    invoke-virtual {v0, p1, p2}, Ljava/text/DecimalFormat;->parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
