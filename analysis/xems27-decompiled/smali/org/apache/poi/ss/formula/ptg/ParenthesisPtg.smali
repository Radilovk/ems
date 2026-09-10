.class public final Lorg/apache/poi/ss/formula/ptg/ParenthesisPtg;
.super Lorg/apache/poi/ss/formula/ptg/ControlPtg;
.source "ParenthesisPtg.java"


# static fields
.field private static final SIZE:I = 0x1

.field public static final instance:Lorg/apache/poi/ss/formula/ptg/ControlPtg;

.field public static final sid:B = 0x15t


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lorg/apache/poi/ss/formula/ptg/ParenthesisPtg;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/ptg/ParenthesisPtg;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/ptg/ParenthesisPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ControlPtg;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/ControlPtg;-><init>()V

    .line 41
    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 1

    .line 48
    const/4 v0, 0x1

    return v0
.end method

.method public toFormulaString()Ljava/lang/String;
    .locals 1

    .line 52
    const-string v0, "()"

    return-object v0
.end method

.method public toFormulaString([Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "operands"    # [Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 44
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/ParenthesisPtg;->getPtgClass()B

    move-result v0

    add-int/lit8 v0, v0, 0x15

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 45
    return-void
.end method
