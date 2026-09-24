.class final Lcom/isaigu/gymapp/widget/XemsNav$Tile;
.super Ljava/lang/Object;
.source "XemsNav.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/widget/XemsNav;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Tile"
.end annotation


# instance fields
.field icon:Landroid/widget/TextView;

.field lastState:I

.field lastText:Ljava/lang/String;

.field module:I

.field root:Landroid/widget/LinearLayout;

.field status:Landroid/widget/TextView;

.field tint:I


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/widget/XemsNav$Tile;->lastState:I

    return-void
.end method
