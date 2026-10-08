.class final Lcom/isaigu/gymapp/widget/XemsLang$Again;
.super Ljava/lang/Object;
.source "XemsLang.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/widget/XemsLang;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Again"
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLang$Again;->a:Landroid/app/Activity;

    .line 73
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLang$Again;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLang;->reapply(Landroid/app/Activity;)V

    .line 78
    return-void
.end method
