.class final Lorg/apache/poi/ss/usermodel/DataFormatter$ConstantStringFormat;
.super Ljava/text/Format;
.source "DataFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/usermodel/DataFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ConstantStringFormat"
.end annotation


# static fields
.field private static final df:Ljava/text/DecimalFormat;


# instance fields
.field private final str:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1041
    const-string v0, "##########"

    invoke-static {v0}, Lorg/apache/poi/ss/usermodel/DataFormatter;->createIntegerOnlyFormat(Ljava/lang/String;)Ljava/text/DecimalFormat;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/DataFormatter$ConstantStringFormat;->df:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .line 1043
    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    .line 1044
    iput-object p1, p0, Lorg/apache/poi/ss/usermodel/DataFormatter$ConstantStringFormat;->str:Ljava/lang/String;

    .line 1045
    return-void
.end method


# virtual methods
.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    .line 1049
    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/DataFormatter$ConstantStringFormat;->str:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object p2
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .line 1054
    sget-object v0, Lorg/apache/poi/ss/usermodel/DataFormatter$ConstantStringFormat;->df:Ljava/text/DecimalFormat;

    invoke-virtual {v0, p1, p2}, Ljava/text/DecimalFormat;->parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
