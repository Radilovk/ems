.class final Lcom/isaigu/gymapp/ai/AutoLook$ParamClick;
.super Ljava/lang/Object;
.source "AutoLook.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AutoLook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ParamClick"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 413
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 414
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/LiveParamSheet;->open(Landroid/view/View;)Z

    .line 415
    return-void
.end method
