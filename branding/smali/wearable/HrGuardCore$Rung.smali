.class public final Lcom/isaigu/gymapp/wearable/HrGuardCore$Rung;
.super Ljava/lang/Object;
.source "HrGuardCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/HrGuardCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Rung"
.end annotation


# instance fields
.field public final lever:Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

.field public final limit:D


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;D)V
    .registers 4

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore$Rung;->lever:Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    .line 88
    iput-wide p2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore$Rung;->limit:D

    .line 89
    return-void
.end method
