.class public final Lcom/isaigu/gymapp/ai/AiWorkout$Item;
.super Ljava/lang/Object;
.source "AiWorkout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AiWorkout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Item"
.end annotation


# instance fields
.field public equipment:Ljava/lang/String;

.field public how:Ljava/lang/String;

.field public kind:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public restS:I

.field public sets:I

.field public workS:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/16 v1, 0x1e

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiWorkout$Item;->how:Ljava/lang/String;

    .line 44
    const-string v0, "body"

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiWorkout$Item;->equipment:Ljava/lang/String;

    .line 45
    const/4 v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AiWorkout$Item;->sets:I

    .line 46
    iput v1, p0, Lcom/isaigu/gymapp/ai/AiWorkout$Item;->workS:I

    .line 47
    iput v1, p0, Lcom/isaigu/gymapp/ai/AiWorkout$Item;->restS:I

    return-void
.end method
