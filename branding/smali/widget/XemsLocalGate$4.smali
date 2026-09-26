.class Lcom/isaigu/gymapp/widget/XemsLocalGate$4;
.super Ljava/lang/Object;
.source "XemsLocalGate.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/widget/XemsLocalGate;->attach(Landroid/app/Activity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$group:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;)V
    .registers 2

    .line 143
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLocalGate$4;->val$group:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 2

    .line 146
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalGate$4;->val$group:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLocalGate;->applyLicenceRule(Landroid/view/ViewGroup;)V

    .line 147
    return-void
.end method
