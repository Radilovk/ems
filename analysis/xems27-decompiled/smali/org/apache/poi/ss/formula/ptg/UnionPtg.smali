.class public final Lorg/apache/poi/ss/formula/ptg/UnionPtg;
.super Lorg/apache/poi/ss/formula/ptg/OperationPtg;
.source "UnionPtg.java"


# static fields
.field public static final instance:Lorg/apache/poi/ss/formula/ptg/OperationPtg;

.field public static final sid:B = 0x10t


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lorg/apache/poi/ss/formula/ptg/UnionPtg;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/ptg/UnionPtg;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/ptg/UnionPtg;->instance:Lorg/apache/poi/ss/formula/ptg/OperationPtg;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/OperationPtg;-><init>()V

    .line 33
    return-void
.end method


# virtual methods
.method public getNumberOfOperands()I
    .locals 1

    .line 67
    const/4 v0, 0x2

    return v0
.end method

.method public getSize()I
    .locals 1

    .line 41
    const/4 v0, 0x1

    return v0
.end method

.method public final isBaseToken()Z
    .locals 1

    .line 36
    const/4 v0, 0x1

    return v0
.end method

.method public toFormulaString()Ljava/lang/String;
    .locals 1

    .line 50
    const-string v0, ","

    return-object v0
.end method

.method public toFormulaString([Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "operands"    # [Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 59
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public write(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 45
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/UnionPtg;->getPtgClass()B

    move-result v0

    add-int/lit8 v0, v0, 0x10

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 46
    return-void
.end method
