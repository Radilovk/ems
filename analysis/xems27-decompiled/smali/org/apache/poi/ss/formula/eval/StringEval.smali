.class public final Lorg/apache/poi/ss/formula/eval/StringEval;
.super Ljava/lang/Object;
.source "StringEval.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/eval/StringValueEval;


# static fields
.field public static final EMPTY_INSTANCE:Lorg/apache/poi/ss/formula/eval/StringEval;


# instance fields
.field private final _value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lorg/apache/poi/ss/formula/eval/StringEval;

    const-string v1, ""

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/StringEval;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/ss/formula/eval/StringEval;->EMPTY_INSTANCE:Lorg/apache/poi/ss/formula/eval/StringEval;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    if-eqz p1, :cond_0

    .line 40
    iput-object p1, p0, Lorg/apache/poi/ss/formula/eval/StringEval;->_value:Ljava/lang/String;

    .line 41
    return-void

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/apache/poi/ss/formula/ptg/Ptg;)V
    .locals 1
    .param p1, "ptg"    # Lorg/apache/poi/ss/formula/ptg/Ptg;

    .line 33
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/ss/formula/ptg/StringPtg;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/StringPtg;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/eval/StringEval;-><init>(Ljava/lang/String;)V

    .line 34
    return-void
.end method


# virtual methods
.method public getStringValue()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/StringEval;->_value:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 49
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    iget-object v1, p0, Lorg/apache/poi/ss/formula/eval/StringEval;->_value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
