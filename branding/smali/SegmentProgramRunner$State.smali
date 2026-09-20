.class final Lcom/isaigu/gymapp/dialog/SegmentProgramRunner$State;
.super Ljava/lang/Object;
.source "SegmentProgramRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/dialog/SegmentProgramRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "State"
.end annotation


# instance fields
.field cyclesDone:I

.field extended:Z

.field savedWorkLength:I

.field segmentIndex:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/isaigu/gymapp/dialog/SegmentProgramRunner$1;)V
    .registers 2

    .line 15
    invoke-direct {p0}, Lcom/isaigu/gymapp/dialog/SegmentProgramRunner$State;-><init>()V

    return-void
.end method
