.class final Lorg/apache/poi/hssf/record/BoundSheetRecord$1;
.super Ljava/lang/Object;
.source "BoundSheetRecord.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hssf/record/BoundSheetRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/apache/poi/hssf/record/BoundSheetRecord;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 193
    check-cast p1, Lorg/apache/poi/hssf/record/BoundSheetRecord;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/apache/poi/hssf/record/BoundSheetRecord;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hssf/record/BoundSheetRecord$1;->compare(Lorg/apache/poi/hssf/record/BoundSheetRecord;Lorg/apache/poi/hssf/record/BoundSheetRecord;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/apache/poi/hssf/record/BoundSheetRecord;Lorg/apache/poi/hssf/record/BoundSheetRecord;)I
    .locals 2
    .param p1, "bsr1"    # Lorg/apache/poi/hssf/record/BoundSheetRecord;
    .param p2, "bsr2"    # Lorg/apache/poi/hssf/record/BoundSheetRecord;

    .prologue
    .line 196
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/BoundSheetRecord;->getPositionOfBof()I

    move-result v0

    invoke-virtual {p2}, Lorg/apache/poi/hssf/record/BoundSheetRecord;->getPositionOfBof()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method
