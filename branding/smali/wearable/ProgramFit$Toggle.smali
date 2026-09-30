.class final Lcom/isaigu/gymapp/wearable/ProgramFit$Toggle;
.super Ljava/lang/Object;
.source "ProgramFit.java"

# interfaces
.implements Lcom/isaigu/gymapp/widget/XemsUi$OnToggle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/ProgramFit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Toggle"
.end annotation


# instance fields
.field private final c:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 743
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 744
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/ProgramFit$Toggle;->c:Landroid/content/Context;

    .line 745
    return-void
.end method


# virtual methods
.method public onToggle(Z)V
    .registers 3

    .prologue
    .line 749
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ProgramFit$Toggle;->c:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/wearable/ProgramFit;->setEnabled(Landroid/content/Context;Z)V

    .line 750
    return-void
.end method
