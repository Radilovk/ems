.class public final Lcom/isaigu/gymapp/wearable/face/FaceCourse$Stats;
.super Ljava/lang/Object;
.source "FaceCourse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/face/FaceCourse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stats"
.end annotation


# instance fields
.field public done:I

.field public finished:Z

.field public lastMs:J

.field public nextMs:J

.field public planned:I

.field public week:I

.field public weeks:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
