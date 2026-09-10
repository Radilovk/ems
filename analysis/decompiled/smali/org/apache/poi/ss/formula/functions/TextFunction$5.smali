.class final Lorg/apache/poi/ss/formula/functions/TextFunction$5;
.super Lorg/apache/poi/ss/formula/functions/TextFunction$SingleArgTextFunc;
.source "TextFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/functions/TextFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final nonAlphabeticPattern:Ljava/util/regex/Pattern;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 123
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/TextFunction$SingleArgTextFunc;-><init>()V

    .line 124
    const-string v0, "\\P{IsL}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/ss/formula/functions/TextFunction$5;->nonAlphabeticPattern:Ljava/util/regex/Pattern;

    return-void
.end method


# virtual methods
.method protected evaluate(Ljava/lang/String;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 7
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x1

    .line 128
    .local v3, "shouldMakeUppercase":Z
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, "lowercaseText":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 130
    .local v4, "uppercaseText":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 131
    if-eqz v3, :cond_0

    .line 132
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 137
    :goto_1
    iget-object v5, p0, Lorg/apache/poi/ss/formula/functions/TextFunction$5;->nonAlphabeticPattern:Ljava/util/regex/Pattern;

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p1, v0, v6}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 139
    :cond_1
    new-instance v5, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/poi/ss/formula/eval/StringEval;-><init>(Ljava/lang/String;)V

    return-object v5
.end method
