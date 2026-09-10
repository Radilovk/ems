.class final Lorg/apache/poi/ss/formula/functions/LookupUtils$StringLookupComparer;
.super Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparerBase;
.source "LookupUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/functions/LookupUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StringLookupComparer"
.end annotation


# instance fields
.field private _isMatchFunction:Z

.field private _matchExact:Z

.field private _value:Ljava/lang/String;

.field private final _wildCardPattern:Ljava/util/regex/Pattern;


# direct methods
.method protected constructor <init>(Lorg/apache/poi/ss/formula/eval/StringEval;ZZ)V
    .locals 1
    .param p1, "se"    # Lorg/apache/poi/ss/formula/eval/StringEval;
    .param p2, "matchExact"    # Z
    .param p3, "isMatchFunction"    # Z

    .line 290
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparerBase;-><init>(Lorg/apache/poi/ss/formula/eval/ValueEval;)V

    .line 291
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/eval/StringEval;->getStringValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$StringLookupComparer;->_value:Ljava/lang/String;

    .line 292
    invoke-static {v0}, Lorg/apache/poi/ss/formula/functions/Countif$StringMatcher;->getWildCardPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$StringLookupComparer;->_wildCardPattern:Ljava/util/regex/Pattern;

    .line 293
    iput-boolean p2, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$StringLookupComparer;->_matchExact:Z

    .line 294
    iput-boolean p3, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$StringLookupComparer;->_isMatchFunction:Z

    .line 295
    return-void
.end method


# virtual methods
.method protected compareSameType(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;
    .locals 5
    .param p1, "other"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 298
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/ss/formula/eval/StringEval;

    .line 300
    .local v0, "se":Lorg/apache/poi/ss/formula/eval/StringEval;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/StringEval;->getStringValue()Ljava/lang/String;

    move-result-object v1

    .line 301
    .local v1, "stringValue":Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$StringLookupComparer;->_wildCardPattern:Ljava/util/regex/Pattern;

    if-eqz v2, :cond_1

    .line 302
    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 303
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    .line 305
    .local v3, "matches":Z
    iget-boolean v4, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$StringLookupComparer;->_isMatchFunction:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$StringLookupComparer;->_matchExact:Z

    if-nez v4, :cond_1

    .line 307
    :cond_0
    invoke-static {v3}, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;->valueOf(Z)Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;

    move-result-object v4

    return-object v4

    .line 311
    .end local v2    # "matcher":Ljava/util/regex/Matcher;
    .end local v3    # "matches":Z
    :cond_1
    iget-object v2, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$StringLookupComparer;->_value:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;->valueOf(I)Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;

    move-result-object v2

    return-object v2
.end method

.method protected getValueAsString()Ljava/lang/String;
    .locals 1

    .line 314
    iget-object v0, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$StringLookupComparer;->_value:Ljava/lang/String;

    return-object v0
.end method
