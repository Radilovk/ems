.class public final Lorg/apache/poi/ss/formula/ptg/ConcatPtg;
.super Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;
.source "ConcatPtg.java"


# static fields
.field private static final CONCAT:Ljava/lang/String; = "&"

.field public static final instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

.field public static final sid:B = 0x8t


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Lorg/apache/poi/ss/formula/ptg/ConcatPtg;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/ptg/ConcatPtg;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/ptg/ConcatPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;-><init>()V

    .line 34
    return-void
.end method


# virtual methods
.method public getNumberOfOperands()I
    .locals 1

    .line 41
    const/4 v0, 0x2

    return v0
.end method

.method protected getSid()B
    .locals 1

    .line 37
    const/16 v0, 0x8

    return v0
.end method

.method public toFormulaString([Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "operands"    # [Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 47
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 48
    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 49
    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
