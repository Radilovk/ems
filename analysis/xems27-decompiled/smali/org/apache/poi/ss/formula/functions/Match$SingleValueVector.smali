.class final Lorg/apache/poi/ss/formula/functions/Match$SingleValueVector;
.super Ljava/lang/Object;
.source "Match.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/functions/Match;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SingleValueVector"
.end annotation


# instance fields
.field private final _value:Lorg/apache/poi/ss/formula/eval/ValueEval;


# direct methods
.method public constructor <init>(Lorg/apache/poi/ss/formula/eval/ValueEval;)V
    .locals 0
    .param p1, "value"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Lorg/apache/poi/ss/formula/functions/Match$SingleValueVector;->_value:Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 110
    return-void
.end method


# virtual methods
.method public getItem(I)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 3
    .param p1, "index"    # I

    .line 113
    if-nez p1, :cond_0

    .line 117
    iget-object v0, p0, Lorg/apache/poi/ss/formula/functions/Match$SingleValueVector;->_value:Lorg/apache/poi/ss/formula/eval/ValueEval;

    return-object v0

    .line 114
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid index ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") only zero is allowed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSize()I
    .locals 1

    .line 121
    const/4 v0, 0x1

    return v0
.end method
