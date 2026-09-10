.class public final Lorg/apache/poi/ss/formula/eval/NumberEval;
.super Ljava/lang/Object;
.source "NumberEval.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/eval/NumericValueEval;
.implements Lorg/apache/poi/ss/formula/eval/StringValueEval;


# static fields
.field public static final ZERO:Lorg/apache/poi/ss/formula/eval/NumberEval;


# instance fields
.field private _stringValue:Ljava/lang/String;

.field private final _value:D


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 34
    new-instance v0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    sput-object v0, Lorg/apache/poi/ss/formula/eval/NumberEval;->ZERO:Lorg/apache/poi/ss/formula/eval/NumberEval;

    return-void
.end method

.method public constructor <init>(D)V
    .locals 0
    .param p1, "value"    # D

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-wide p1, p0, Lorg/apache/poi/ss/formula/eval/NumberEval;->_value:D

    .line 54
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ss/formula/ptg/Ptg;)V
    .locals 3
    .param p1, "ptg"    # Lorg/apache/poi/ss/formula/ptg/Ptg;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    if-eqz p1, :cond_2

    .line 43
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/IntPtg;

    if-eqz v0, :cond_0

    .line 44
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/ss/formula/ptg/IntPtg;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/IntPtg;->getValue()I

    move-result v0

    int-to-double v0, v0

    iput-wide v0, p0, Lorg/apache/poi/ss/formula/eval/NumberEval;->_value:D

    goto :goto_0

    .line 45
    :cond_0
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/NumberPtg;

    if-eqz v0, :cond_1

    .line 46
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/ss/formula/ptg/NumberPtg;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/NumberPtg;->getValue()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/ss/formula/eval/NumberEval;->_value:D

    .line 50
    :goto_0
    return-void

    .line 48
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad argument type ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ptg must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getNumberValue()D
    .locals 2

    .line 57
    iget-wide v0, p0, Lorg/apache/poi/ss/formula/eval/NumberEval;->_value:D

    return-wide v0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 2

    .line 61
    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/NumberEval;->_stringValue:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 62
    iget-wide v0, p0, Lorg/apache/poi/ss/formula/eval/NumberEval;->_value:D

    invoke-static {v0, v1}, Lorg/apache/poi/ss/util/NumberToTextConverter;->toText(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/ss/formula/eval/NumberEval;->_stringValue:Ljava/lang/String;

    .line 64
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/NumberEval;->_stringValue:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 67
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 68
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getStringValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
