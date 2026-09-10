.class public final Lorg/apache/poi/ss/formula/ptg/ErrPtg;
.super Lorg/apache/poi/ss/formula/ptg/ScalarConstantPtg;
.source "ErrPtg.java"


# static fields
.field public static final DIV_ZERO:Lorg/apache/poi/ss/formula/ptg/ErrPtg;

.field private static final EC:Lorg/apache/poi/ss/usermodel/ErrorConstants;

.field public static final NAME_INVALID:Lorg/apache/poi/ss/formula/ptg/ErrPtg;

.field public static final NULL_INTERSECTION:Lorg/apache/poi/ss/formula/ptg/ErrPtg;

.field public static final NUM_ERROR:Lorg/apache/poi/ss/formula/ptg/ErrPtg;

.field public static final N_A:Lorg/apache/poi/ss/formula/ptg/ErrPtg;

.field public static final REF_INVALID:Lorg/apache/poi/ss/formula/ptg/ErrPtg;

.field private static final SIZE:I = 0x2

.field public static final VALUE_INVALID:Lorg/apache/poi/ss/formula/ptg/ErrPtg;

.field public static final sid:S = 0x1cs


# instance fields
.field private final field_1_error_code:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    const/4 v0, 0x0

    sput-object v0, Lorg/apache/poi/ss/formula/ptg/ErrPtg;->EC:Lorg/apache/poi/ss/usermodel/ErrorConstants;

    .line 34
    new-instance v0, Lorg/apache/poi/ss/formula/ptg/ErrPtg;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/ptg/ErrPtg;-><init>(I)V

    sput-object v0, Lorg/apache/poi/ss/formula/ptg/ErrPtg;->NULL_INTERSECTION:Lorg/apache/poi/ss/formula/ptg/ErrPtg;

    .line 37
    new-instance v0, Lorg/apache/poi/ss/formula/ptg/ErrPtg;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/ptg/ErrPtg;-><init>(I)V

    sput-object v0, Lorg/apache/poi/ss/formula/ptg/ErrPtg;->DIV_ZERO:Lorg/apache/poi/ss/formula/ptg/ErrPtg;

    .line 40
    new-instance v0, Lorg/apache/poi/ss/formula/ptg/ErrPtg;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/ptg/ErrPtg;-><init>(I)V

    sput-object v0, Lorg/apache/poi/ss/formula/ptg/ErrPtg;->VALUE_INVALID:Lorg/apache/poi/ss/formula/ptg/ErrPtg;

    .line 43
    new-instance v0, Lorg/apache/poi/ss/formula/ptg/ErrPtg;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/ptg/ErrPtg;-><init>(I)V

    sput-object v0, Lorg/apache/poi/ss/formula/ptg/ErrPtg;->REF_INVALID:Lorg/apache/poi/ss/formula/ptg/ErrPtg;

    .line 46
    new-instance v0, Lorg/apache/poi/ss/formula/ptg/ErrPtg;

    const/16 v1, 0x1d

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/ptg/ErrPtg;-><init>(I)V

    sput-object v0, Lorg/apache/poi/ss/formula/ptg/ErrPtg;->NAME_INVALID:Lorg/apache/poi/ss/formula/ptg/ErrPtg;

    .line 49
    new-instance v0, Lorg/apache/poi/ss/formula/ptg/ErrPtg;

    const/16 v1, 0x24

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/ptg/ErrPtg;-><init>(I)V

    sput-object v0, Lorg/apache/poi/ss/formula/ptg/ErrPtg;->NUM_ERROR:Lorg/apache/poi/ss/formula/ptg/ErrPtg;

    .line 52
    new-instance v0, Lorg/apache/poi/ss/formula/ptg/ErrPtg;

    const/16 v1, 0x2a

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/ptg/ErrPtg;-><init>(I)V

    sput-object v0, Lorg/apache/poi/ss/formula/ptg/ErrPtg;->N_A:Lorg/apache/poi/ss/formula/ptg/ErrPtg;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 3
    .param p1, "errorCode"    # I

    .line 61
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/ScalarConstantPtg;-><init>()V

    .line 62
    invoke-static {p1}, Lorg/apache/poi/ss/usermodel/ErrorConstants;->isValidCode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iput p1, p0, Lorg/apache/poi/ss/formula/ptg/ErrPtg;->field_1_error_code:I

    .line 66
    return-void

    .line 63
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid error code ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static read(Lorg/apache/poi/util/LittleEndianInput;)Lorg/apache/poi/ss/formula/ptg/ErrPtg;
    .locals 1
    .param p0, "in"    # Lorg/apache/poi/util/LittleEndianInput;

    .line 69
    invoke-interface {p0}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/ss/formula/ptg/ErrPtg;->valueOf(I)Lorg/apache/poi/ss/formula/ptg/ErrPtg;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(I)Lorg/apache/poi/ss/formula/ptg/ErrPtg;
    .locals 3
    .param p0, "code"    # I

    .line 90
    if-eqz p0, :cond_6

    const/4 v0, 0x7

    if-eq p0, v0, :cond_5

    const/16 v0, 0xf

    if-eq p0, v0, :cond_4

    const/16 v0, 0x17

    if-eq p0, v0, :cond_3

    const/16 v0, 0x1d

    if-eq p0, v0, :cond_2

    const/16 v0, 0x24

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2a

    if-ne p0, v0, :cond_0

    .line 92
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/ErrPtg;->N_A:Lorg/apache/poi/ss/formula/ptg/ErrPtg;

    return-object v0

    .line 99
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected error code ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_1
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/ErrPtg;->NUM_ERROR:Lorg/apache/poi/ss/formula/ptg/ErrPtg;

    return-object v0

    .line 93
    :cond_2
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/ErrPtg;->NAME_INVALID:Lorg/apache/poi/ss/formula/ptg/ErrPtg;

    return-object v0

    .line 96
    :cond_3
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/ErrPtg;->REF_INVALID:Lorg/apache/poi/ss/formula/ptg/ErrPtg;

    return-object v0

    .line 97
    :cond_4
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/ErrPtg;->VALUE_INVALID:Lorg/apache/poi/ss/formula/ptg/ErrPtg;

    return-object v0

    .line 91
    :cond_5
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/ErrPtg;->DIV_ZERO:Lorg/apache/poi/ss/formula/ptg/ErrPtg;

    return-object v0

    .line 94
    :cond_6
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/ErrPtg;->NULL_INTERSECTION:Lorg/apache/poi/ss/formula/ptg/ErrPtg;

    return-object v0
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .line 86
    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/ErrPtg;->field_1_error_code:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .line 82
    const/4 v0, 0x2

    return v0
.end method

.method public toFormulaString()Ljava/lang/String;
    .locals 1

    .line 78
    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/ErrPtg;->field_1_error_code:I

    invoke-static {v0}, Lorg/apache/poi/ss/usermodel/ErrorConstants;->getText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 73
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/ErrPtg;->getPtgClass()B

    move-result v0

    add-int/lit8 v0, v0, 0x1c

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 74
    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/ErrPtg;->field_1_error_code:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 75
    return-void
.end method
