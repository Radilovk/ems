.class Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker$1;
.super Ljava/lang/Object;
.source "ICBaseSt3IN1SkipWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->runOnWorkThread(Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;

.field final synthetic val$task:Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;


# direct methods
.method constructor <init>(Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V
    .registers 3

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker$1;->this$0:Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;

    iput-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker$1;->val$task:Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker$1;->val$task:Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;

    .line 171
    invoke-interface {v0}, Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;->onRun()V

    return-void
.end method
