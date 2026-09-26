.class final Lcom/isaigu/gymapp/train/utils/MusicSync$PlayerPrepareSuccess;
.super Ljava/lang/Object;
.source "MusicSync.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/train/utils/MusicSync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PlayerPrepareSuccess"
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final envelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

.field private final uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/net/Uri;Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;)V
    .registers 4

    .line 876
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 877
    iput-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicSync$PlayerPrepareSuccess;->activity:Landroid/app/Activity;

    .line 878
    iput-object p2, p0, Lcom/isaigu/gymapp/train/utils/MusicSync$PlayerPrepareSuccess;->uri:Landroid/net/Uri;

    .line 879
    iput-object p3, p0, Lcom/isaigu/gymapp/train/utils/MusicSync$PlayerPrepareSuccess;->envelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    .line 880
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 884
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicSync$PlayerPrepareSuccess;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicSync$PlayerPrepareSuccess;->uri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/isaigu/gymapp/train/utils/MusicSync$PlayerPrepareSuccess;->envelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    # invokes: Lcom/isaigu/gymapp/train/utils/MusicSync;->finishStartPlayer(Landroid/app/Activity;Landroid/net/Uri;Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;)V
    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$300(Landroid/app/Activity;Landroid/net/Uri;Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;)V

    .line 885
    return-void
.end method
