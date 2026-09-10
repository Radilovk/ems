.class abstract Lorg/apache/poi/ss/formula/functions/Countif$MatcherBase;
.super Ljava/lang/Object;
.source "Countif.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/functions/Countif;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "MatcherBase"
.end annotation


# instance fields
.field private final _operator:Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;


# direct methods
.method constructor <init>(Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;)V
    .locals 0
    .param p1, "operator"    # Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p1, p0, Lorg/apache/poi/ss/formula/functions/Countif$MatcherBase;->_operator:Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;

    .line 155
    return-void
.end method


# virtual methods
.method protected final evaluate(I)Z
    .locals 1
    .param p1, "cmpResult"    # I

    .line 160
    iget-object v0, p0, Lorg/apache/poi/ss/formula/functions/Countif$MatcherBase;->_operator:Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;->evaluate(I)Z

    move-result v0

    return v0
.end method

.method protected final evaluate(Z)Z
    .locals 1
    .param p1, "cmpResult"    # Z

    .line 163
    iget-object v0, p0, Lorg/apache/poi/ss/formula/functions/Countif$MatcherBase;->_operator:Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;->evaluate(Z)Z

    move-result v0

    return v0
.end method

.method protected final getCode()I
    .locals 1

    .line 157
    iget-object v0, p0, Lorg/apache/poi/ss/formula/functions/Countif$MatcherBase;->_operator:Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;->getCode()I

    move-result v0

    return v0
.end method

.method protected abstract getValueText()Ljava/lang/String;
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 167
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 168
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 169
    iget-object v1, p0, Lorg/apache/poi/ss/formula/functions/Countif$MatcherBase;->_operator:Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;->getRepresentation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 170
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/functions/Countif$MatcherBase;->getValueText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 171
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 172
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
