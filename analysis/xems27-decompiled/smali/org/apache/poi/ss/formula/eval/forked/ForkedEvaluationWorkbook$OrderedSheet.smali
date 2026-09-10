.class final Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook$OrderedSheet;
.super Ljava/lang/Object;
.source "ForkedEvaluationWorkbook.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OrderedSheet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook$OrderedSheet;",
        ">;"
    }
.end annotation


# instance fields
.field private final _index:I

.field private final _sheetName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "sheetName"    # Ljava/lang/String;
    .param p2, "index"    # I

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iput-object p1, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook$OrderedSheet;->_sheetName:Ljava/lang/String;

    .line 154
    iput p2, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook$OrderedSheet;->_index:I

    .line 155
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .line 148
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook$OrderedSheet;

    invoke-virtual {p0, v0}, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook$OrderedSheet;->compareTo(Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook$OrderedSheet;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook$OrderedSheet;)I
    .locals 2
    .param p1, "o"    # Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook$OrderedSheet;

    .line 160
    iget v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook$OrderedSheet;->_index:I

    iget v1, p1, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook$OrderedSheet;->_index:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getSheetName()Ljava/lang/String;
    .locals 1

    .line 157
    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook$OrderedSheet;->_sheetName:Ljava/lang/String;

    return-object v0
.end method
