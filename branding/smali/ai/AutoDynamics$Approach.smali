.class public final Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;
.super Ljava/lang/Object;
.source "AutoDynamics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AutoDynamics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Approach"
.end annotation


# instance fields
.field public final bg:Ljava/lang/String;

.field public final cls:I

.field public final en:Ljava/lang/String;

.field public final floor:I

.field public final hz:I

.field public final id:Ljava/lang/String;

.field public final off:I

.field public final on:I

.field public final pauseHz:I

.field public final pauseSigma:D


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIDI)V
    .registers 13

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;->id:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;->bg:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;->en:Ljava/lang/String;

    .line 47
    iput p4, p0, Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;->hz:I

    .line 48
    iput p5, p0, Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;->floor:I

    .line 49
    iput p6, p0, Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;->on:I

    .line 50
    iput p7, p0, Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;->off:I

    .line 51
    iput p8, p0, Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;->pauseHz:I

    .line 52
    iput-wide p9, p0, Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;->pauseSigma:D

    .line 53
    iput p11, p0, Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;->cls:I

    .line 54
    return-void
.end method


# virtual methods
.method public name()Ljava/lang/String;
    .registers 3

    .prologue
    .line 57
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;->bg:Ljava/lang/String;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;->en:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
