.class public Lorg/apache/poi/ss/formula/constant/ErrorConstant;
.super Ljava/lang/Object;
.source "ErrorConstant.java"


# static fields
.field private static final DIV_0:Lorg/apache/poi/ss/formula/constant/ErrorConstant;

.field private static final EC:Lorg/apache/poi/ss/usermodel/ErrorConstants;

.field private static final NA:Lorg/apache/poi/ss/formula/constant/ErrorConstant;

.field private static final NAME:Lorg/apache/poi/ss/formula/constant/ErrorConstant;

.field private static final NULL:Lorg/apache/poi/ss/formula/constant/ErrorConstant;

.field private static final NUM:Lorg/apache/poi/ss/formula/constant/ErrorConstant;

.field private static final REF:Lorg/apache/poi/ss/formula/constant/ErrorConstant;

.field private static final VALUE:Lorg/apache/poi/ss/formula/constant/ErrorConstant;

.field private static logger:Lorg/apache/poi/util/POILogger;


# instance fields
.field private final _errorCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    const-class v0, Lorg/apache/poi/ss/formula/constant/ErrorConstant;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/constant/ErrorConstant;->logger:Lorg/apache/poi/util/POILogger;

    .line 34
    const/4 v0, 0x0

    sput-object v0, Lorg/apache/poi/ss/formula/constant/ErrorConstant;->EC:Lorg/apache/poi/ss/usermodel/ErrorConstants;

    .line 37
    new-instance v0, Lorg/apache/poi/ss/formula/constant/ErrorConstant;

    sget-object v1, Lorg/apache/poi/ss/formula/constant/ErrorConstant;->EC:Lorg/apache/poi/ss/usermodel/ErrorConstants;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/constant/ErrorConstant;-><init>(I)V

    sput-object v0, Lorg/apache/poi/ss/formula/constant/ErrorConstant;->NULL:Lorg/apache/poi/ss/formula/constant/ErrorConstant;

    .line 39
    new-instance v0, Lorg/apache/poi/ss/formula/constant/ErrorConstant;

    sget-object v1, Lorg/apache/poi/ss/formula/constant/ErrorConstant;->EC:Lorg/apache/poi/ss/usermodel/ErrorConstants;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/constant/ErrorConstant;-><init>(I)V

    sput-object v0, Lorg/apache/poi/ss/formula/constant/ErrorConstant;->DIV_0:Lorg/apache/poi/ss/formula/constant/ErrorConstant;

    .line 41
    new-instance v0, Lorg/apache/poi/ss/formula/constant/ErrorConstant;

    sget-object v1, Lorg/apache/poi/ss/formula/constant/ErrorConstant;->EC:Lorg/apache/poi/ss/usermodel/ErrorConstants;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/constant/ErrorConstant;-><init>(I)V

    sput-object v0, Lorg/apache/poi/ss/formula/constant/ErrorConstant;->VALUE:Lorg/apache/poi/ss/formula/constant/ErrorConstant;

    .line 43
    new-instance v0, Lorg/apache/poi/ss/formula/constant/ErrorConstant;

    sget-object v1, Lorg/apache/poi/ss/formula/constant/ErrorConstant;->EC:Lorg/apache/poi/ss/usermodel/ErrorConstants;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/constant/ErrorConstant;-><init>(I)V

    sput-object v0, Lorg/apache/poi/ss/formula/constant/ErrorConstant;->REF:Lorg/apache/poi/ss/formula/constant/ErrorConstant;

    .line 45
    new-instance v0, Lorg/apache/poi/ss/formula/constant/ErrorConstant;

    sget-object v1, Lorg/apache/poi/ss/formula/constant/ErrorConstant;->EC:Lorg/apache/poi/ss/usermodel/ErrorConstants;

    const/16 v1, 0x1d

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/constant/ErrorConstant;-><init>(I)V

    sput-object v0, Lorg/apache/poi/ss/formula/constant/ErrorConstant;->NAME:Lorg/apache/poi/ss/formula/constant/ErrorConstant;

    .line 47
    new-instance v0, Lorg/apache/poi/ss/formula/constant/ErrorConstant;

    sget-object v1, Lorg/apache/poi/ss/formula/constant/ErrorConstant;->EC:Lorg/apache/poi/ss/usermodel/ErrorConstants;

    const/16 v1, 0x24

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/constant/ErrorConstant;-><init>(I)V

    sput-object v0, Lorg/apache/poi/ss/formula/constant/ErrorConstant;->NUM:Lorg/apache/poi/ss/formula/constant/ErrorConstant;

    .line 49
    new-instance v0, Lorg/apache/poi/ss/formula/constant/ErrorConstant;

    sget-object v1, Lorg/apache/poi/ss/formula/constant/ErrorConstant;->EC:Lorg/apache/poi/ss/usermodel/ErrorConstants;

    const/16 v1, 0x2a

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/constant/ErrorConstant;-><init>(I)V

    sput-object v0, Lorg/apache/poi/ss/formula/constant/ErrorConstant;->NA:Lorg/apache/poi/ss/formula/constant/ErrorConstant;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0
    .param p1, "errorCode"    # I

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Lorg/apache/poi/ss/formula/constant/ErrorConstant;->_errorCode:I

    .line 55
    return-void
.end method

.method public static valueOf(I)Lorg/apache/poi/ss/formula/constant/ErrorConstant;
    .locals 4
    .param p0, "errorCode"    # I

    .prologue
    .line 68
    sparse-switch p0, :sswitch_data_0

    .line 77
    sget-object v0, Lorg/apache/poi/ss/formula/constant/ErrorConstant;->logger:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Warning - unexpected error code ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 78
    new-instance v0, Lorg/apache/poi/ss/formula/constant/ErrorConstant;

    invoke-direct {v0, p0}, Lorg/apache/poi/ss/formula/constant/ErrorConstant;-><init>(I)V

    :goto_0
    return-object v0

    .line 69
    :sswitch_0
    sget-object v0, Lorg/apache/poi/ss/formula/constant/ErrorConstant;->NULL:Lorg/apache/poi/ss/formula/constant/ErrorConstant;

    goto :goto_0

    .line 70
    :sswitch_1
    sget-object v0, Lorg/apache/poi/ss/formula/constant/ErrorConstant;->DIV_0:Lorg/apache/poi/ss/formula/constant/ErrorConstant;

    goto :goto_0

    .line 71
    :sswitch_2
    sget-object v0, Lorg/apache/poi/ss/formula/constant/ErrorConstant;->VALUE:Lorg/apache/poi/ss/formula/constant/ErrorConstant;

    goto :goto_0

    .line 72
    :sswitch_3
    sget-object v0, Lorg/apache/poi/ss/formula/constant/ErrorConstant;->REF:Lorg/apache/poi/ss/formula/constant/ErrorConstant;

    goto :goto_0

    .line 73
    :sswitch_4
    sget-object v0, Lorg/apache/poi/ss/formula/constant/ErrorConstant;->NAME:Lorg/apache/poi/ss/formula/constant/ErrorConstant;

    goto :goto_0

    .line 74
    :sswitch_5
    sget-object v0, Lorg/apache/poi/ss/formula/constant/ErrorConstant;->NUM:Lorg/apache/poi/ss/formula/constant/ErrorConstant;

    goto :goto_0

    .line 75
    :sswitch_6
    sget-object v0, Lorg/apache/poi/ss/formula/constant/ErrorConstant;->NA:Lorg/apache/poi/ss/formula/constant/ErrorConstant;

    goto :goto_0

    .line 68
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x7 -> :sswitch_1
        0xf -> :sswitch_2
        0x17 -> :sswitch_3
        0x1d -> :sswitch_4
        0x24 -> :sswitch_5
        0x2a -> :sswitch_6
    .end sparse-switch
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lorg/apache/poi/ss/formula/constant/ErrorConstant;->_errorCode:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 61
    iget v0, p0, Lorg/apache/poi/ss/formula/constant/ErrorConstant;->_errorCode:I

    invoke-static {v0}, Lorg/apache/poi/ss/usermodel/ErrorConstants;->isValidCode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget v0, p0, Lorg/apache/poi/ss/formula/constant/ErrorConstant;->_errorCode:I

    invoke-static {v0}, Lorg/apache/poi/ss/usermodel/ErrorConstants;->getText(I)Ljava/lang/String;

    move-result-object v0

    .line 64
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown error code ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/poi/ss/formula/constant/ErrorConstant;->_errorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 82
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/constant/ErrorConstant;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
