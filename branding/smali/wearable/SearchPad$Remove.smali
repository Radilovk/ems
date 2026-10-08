.class final Lcom/isaigu/gymapp/wearable/SearchPad$Remove;
.super Ljava/lang/Object;
.source "SearchPad.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/SearchPad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Remove"
.end annotation


# instance fields
.field private final host:Landroid/view/ViewGroup;

.field private final v:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 528
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/SearchPad$Remove;->host:Landroid/view/ViewGroup;

    .line 529
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/SearchPad$Remove;->v:Landroid/view/View;

    .line 530
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 535
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SearchPad$Remove;->host:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/SearchPad$Remove;->v:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_8

    .line 538
    :goto_7
    return-void

    .line 536
    :catch_8
    move-exception v0

    goto :goto_7
.end method
