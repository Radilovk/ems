.class final Lcom/isaigu/gymapp/widget/XemsModuleInfo$Subscribe;
.super Ljava/lang/Object;
.source "XemsModuleInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/widget/XemsModuleInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Subscribe"
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final id:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 419
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Subscribe;->activity:Landroid/app/Activity;

    .line 420
    iput-object p2, p0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Subscribe;->id:Ljava/lang/String;

    .line 421
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 425
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Subscribe;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Subscribe;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->subscribe(Landroid/app/Activity;Ljava/lang/String;)V

    .line 426
    return-void
.end method
