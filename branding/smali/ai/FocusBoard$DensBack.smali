.class final Lcom/isaigu/gymapp/ai/FocusBoard$DensBack;
.super Ljava/lang/Object;
.source "FocusBoard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/FocusBoard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DensBack"
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 919
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 920
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$DensBack;->a:Landroid/app/Activity;

    .line 921
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 925
    # getter for: Lcom/isaigu/gymapp/ai/FocusBoard;->turned:Z
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$900()Z

    move-result v0

    if-nez v0, :cond_e

    .line 926
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$DensBack;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/FocusBoard$Dens;->hold(Landroid/app/Activity;)V

    .line 927
    const/4 v0, 0x0

    sput v0, Lcom/isaigu/gymapp/ai/FocusBoard$Dens;->density:F

    .line 929
    :cond_e
    return-void
.end method
