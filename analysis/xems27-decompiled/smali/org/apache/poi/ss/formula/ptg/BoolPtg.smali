.class public final Lorg/apache/poi/ss/formula/ptg/BoolPtg;
.super Lorg/apache/poi/ss/formula/ptg/ScalarConstantPtg;
.source "BoolPtg.java"


# static fields
.field private static final FALSE:Lorg/apache/poi/ss/formula/ptg/BoolPtg;

.field public static final SIZE:I = 0x2

.field private static final TRUE:Lorg/apache/poi/ss/formula/ptg/BoolPtg;

.field public static final sid:B = 0x1dt


# instance fields
.field private final _value:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Lorg/apache/poi/ss/formula/ptg/BoolPtg;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/ptg/BoolPtg;-><init>(Z)V

    sput-object v0, Lorg/apache/poi/ss/formula/ptg/BoolPtg;->FALSE:Lorg/apache/poi/ss/formula/ptg/BoolPtg;

    .line 35
    new-instance v0, Lorg/apache/poi/ss/formula/ptg/BoolPtg;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/ptg/BoolPtg;-><init>(Z)V

    sput-object v0, Lorg/apache/poi/ss/formula/ptg/BoolPtg;->TRUE:Lorg/apache/poi/ss/formula/ptg/BoolPtg;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0
    .param p1, "b"    # Z

    .line 39
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/ScalarConstantPtg;-><init>()V

    .line 40
    iput-boolean p1, p0, Lorg/apache/poi/ss/formula/ptg/BoolPtg;->_value:Z

    .line 41
    return-void
.end method

.method public static read(Lorg/apache/poi/util/LittleEndianInput;)Lorg/apache/poi/ss/formula/ptg/BoolPtg;
    .locals 2
    .param p0, "in"    # Lorg/apache/poi/util/LittleEndianInput;

    .line 47
    invoke-interface {p0}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lorg/apache/poi/ss/formula/ptg/BoolPtg;->valueOf(Z)Lorg/apache/poi/ss/formula/ptg/BoolPtg;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Z)Lorg/apache/poi/ss/formula/ptg/BoolPtg;
    .locals 1
    .param p0, "b"    # Z

    .line 44
    if-eqz p0, :cond_0

    sget-object v0, Lorg/apache/poi/ss/formula/ptg/BoolPtg;->TRUE:Lorg/apache/poi/ss/formula/ptg/BoolPtg;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/BoolPtg;->FALSE:Lorg/apache/poi/ss/formula/ptg/BoolPtg;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public getSize()I
    .locals 1

    .line 60
    const/4 v0, 0x2

    return v0
.end method

.method public getValue()Z
    .locals 1

    .line 51
    iget-boolean v0, p0, Lorg/apache/poi/ss/formula/ptg/BoolPtg;->_value:Z

    return v0
.end method

.method public toFormulaString()Ljava/lang/String;
    .locals 1

    .line 64
    iget-boolean v0, p0, Lorg/apache/poi/ss/formula/ptg/BoolPtg;->_value:Z

    if-eqz v0, :cond_0

    const-string v0, "TRUE"

    goto :goto_0

    :cond_0
    const-string v0, "FALSE"

    :goto_0
    return-object v0
.end method

.method public write(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 55
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/BoolPtg;->getPtgClass()B

    move-result v0

    add-int/lit8 v0, v0, 0x1d

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 56
    iget-boolean v0, p0, Lorg/apache/poi/ss/formula/ptg/BoolPtg;->_value:Z

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 57
    return-void
.end method
