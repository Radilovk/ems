.class public final Lcom/isaigu/gymapp/wearable/NextPlan$Rec;
.super Ljava/lang/Object;
.source "NextPlan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/NextPlan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Rec"
.end annotation


# instance fields
.field public first:Z

.field public last:Lcom/isaigu/gymapp/wearable/NextPlan$Snap;

.field public lastMs:J

.field public next:Lcom/isaigu/gymapp/wearable/NextPlan$Snap;

.field public nextApptMs:J

.field public same:Z

.field public final why:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/NextPlan$Rec;->why:Ljava/util/List;

    return-void
.end method
