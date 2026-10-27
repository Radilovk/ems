.class final Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$ScrollDown;
.super Ljava/lang/Object;
.source "MastogoScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ScrollDown"
.end annotation


# instance fields
.field final v:Landroid/widget/ScrollView;


# direct methods
.method constructor <init>(Landroid/widget/ScrollView;)V
    .registers 2

    .prologue
    .line 2241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2242
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$ScrollDown;->v:Landroid/widget/ScrollView;

    .line 2243
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 2247
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$ScrollDown;->v:Landroid/widget/ScrollView;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 2248
    return-void
.end method
