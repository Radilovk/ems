.class Lcom/isaigu/gymapp/ai/AiUi$34;
.super Ljava/lang/Object;
.source "AiUi.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/ai/AiUi;->toggleRow(Landroid/content/Context;Ljava/lang/String;ZLcom/isaigu/gymapp/ai/AiUi$ToggleCallback;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$cb:Lcom/isaigu/gymapp/ai/AiUi$ToggleCallback;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/ai/AiUi$ToggleCallback;)V
    .registers 2

    .line 1799
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiUi$34;->val$cb:Lcom/isaigu/gymapp/ai/AiUi$ToggleCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 3

    .line 1802
    iget-object p1, p0, Lcom/isaigu/gymapp/ai/AiUi$34;->val$cb:Lcom/isaigu/gymapp/ai/AiUi$ToggleCallback;

    invoke-interface {p1, p2}, Lcom/isaigu/gymapp/ai/AiUi$ToggleCallback;->onToggle(Z)V

    .line 1803
    return-void
.end method
