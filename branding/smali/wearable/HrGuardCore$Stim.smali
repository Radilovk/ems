.class public final Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;
.super Ljava/lang/Object;
.source "HrGuardCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/HrGuardCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stim"
.end annotation


# instance fields
.field public activePause:Z

.field public baseHz:I

.field public baseOffS:I

.field public baseOnS:I

.field public basePause:Z

.field public channels:[I

.field public disabled:[Z

.field public hz:I

.field public offS:I

.field public onS:I

.field public pauseHz:I

.field public pauseStrength:I

.field public pwUs:I

.field public running:Z

.field public strength:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
