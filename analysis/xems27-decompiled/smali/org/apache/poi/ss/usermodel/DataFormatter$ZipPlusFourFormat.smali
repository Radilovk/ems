.class final Lorg/apache/poi/ss/usermodel/DataFormatter$ZipPlusFourFormat;
.super Ljava/text/Format;
.source "DataFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/usermodel/DataFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ZipPlusFourFormat"
.end annotation


# static fields
.field private static final df:Ljava/text/DecimalFormat;

.field public static final instance:Ljava/text/Format;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 954
    new-instance v0, Lorg/apache/poi/ss/usermodel/DataFormatter$ZipPlusFourFormat;

    invoke-direct {v0}, Lorg/apache/poi/ss/usermodel/DataFormatter$ZipPlusFourFormat;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/usermodel/DataFormatter$ZipPlusFourFormat;->instance:Ljava/text/Format;

    .line 955
    const-string v0, "000000000"

    invoke-static {v0}, Lorg/apache/poi/ss/usermodel/DataFormatter;->createIntegerOnlyFormat(Ljava/lang/String;)Ljava/text/DecimalFormat;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/DataFormatter$ZipPlusFourFormat;->df:Ljava/text/DecimalFormat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 956
    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    .line 958
    return-void
.end method

.method public static format(Ljava/lang/Number;)Ljava/lang/String;
    .locals 4
    .param p0, "num"    # Ljava/lang/Number;

    .line 962
    sget-object v0, Lorg/apache/poi/ss/usermodel/DataFormatter$ZipPlusFourFormat;->df:Ljava/text/DecimalFormat;

    invoke-virtual {v0, p0}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 963
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 964
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 965
    const/16 v2, 0x9

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 966
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    .line 971
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-static {v0}, Lorg/apache/poi/ss/usermodel/DataFormatter$ZipPlusFourFormat;->format(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object p2
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .line 976
    sget-object v0, Lorg/apache/poi/ss/usermodel/DataFormatter$ZipPlusFourFormat;->df:Ljava/text/DecimalFormat;

    invoke-virtual {v0, p1, p2}, Ljava/text/DecimalFormat;->parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
