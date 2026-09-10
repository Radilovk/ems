.class public final Lorg/apache/poi/ss/formula/ptg/AddPtg;
.super Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;
.source "AddPtg.java"


# static fields
.field private static final ADD:Ljava/lang/String; = "+"

.field public static final instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

.field public static final sid:B = 0x3t


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lorg/apache/poi/ss/formula/ptg/AddPtg;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/ptg/AddPtg;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/ptg/AddPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;-><init>()V

    .line 35
    return-void
.end method


# virtual methods
.method public getNumberOfOperands()I
    .locals 1

    .line 42
    const/4 v0, 0x2

    return v0
.end method

.method protected getSid()B
    .locals 1

    .line 38
    const/4 v0, 0x3

    return v0
.end method

.method public toFormulaString([Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "operands"    # [Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 49
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51
    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
