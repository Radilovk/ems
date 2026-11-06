.class final Lcom/isaigu/gymapp/wearable/face/FaceStudio$Info;
.super Ljava/lang/Object;
.source "FaceStudio.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/face/FaceStudio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Info"
.end annotation


# instance fields
.field private final v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;)V
    .registers 2

    .prologue
    .line 1093
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1094
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Info;->v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    .line 1095
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 1099
    invoke-static {}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->bg()Z

    move-result v0

    .line 1100
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Info;->v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->a:Landroid/app/Activity;

    const-string v2, "\u041b\u0438\u0446\u0435\u0432\u0438 \u043f\u0440\u043e\u0446\u0435\u0434\u0443\u0440\u0438"

    const-string v3, "Face procedures"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_18

    .line 1101
    const-string v0, "\u0414\u0432\u0430 \u0432\u0438\u0434\u0430 \u0442\u043e\u043a, \u0434\u0432\u0435 \u0446\u0435\u043b\u0438.\n\n\u0414\u0432\u0438\u0433\u0430\u0442\u0435\u043b\u0435\u043d \u2014 \u043b\u0438\u0444\u0442\u0438\u043d\u0433, \u0441\u0442\u0435\u0433\u043d\u0430\u0442 \u043e\u0432\u0430\u043b, \u0434\u0435\u0442\u043e\u043a\u0441, \u043a\u043e\u043d\u0442\u0443\u0440: \u0438\u043c\u043f\u0443\u043b\u0441\u044a\u0442 \u0432\u044a\u0437\u0431\u0443\u0436\u0434\u0430 \u0434\u0432\u0438\u0433\u0430\u0442\u0435\u043b\u043d\u0438\u0442\u0435 \u0440\u0430\u0437\u043a\u043b\u043e\u043d\u0435\u043d\u0438\u044f \u043d\u0430 \u043b\u0438\u0446\u0435\u0432\u0438\u044f \u043d\u0435\u0440\u0432 \u0438 \u043c\u0443\u0441\u043a\u0443\u043b\u0438\u0442\u0435 \u0441\u0435 \u0441\u044a\u043a\u0440\u0430\u0449\u0430\u0432\u0430\u0442 \u0441\u0430\u043c\u0438, \u0431\u0435\u0437 \u0443\u0441\u0438\u043b\u0438\u0435 \u0438 \u0431\u0435\u0437 \u0431\u0440\u044a\u0447\u043a\u0438 \u043e\u0442 \u043c\u0438\u043c\u0438\u043a\u0430. \u041c\u0443\u0441\u043a\u0443\u043b\u0438\u0442\u0435 \u043d\u0430 \u043b\u0438\u0446\u0435\u0442\u043e \u043d\u044f\u043c\u0430\u0442 \u0441\u0443\u0445\u043e\u0436\u0438\u043b\u0438\u044f \u2014 \u0432\u043f\u043b\u0435\u0442\u0435\u043d\u0438 \u0441\u0430 \u0432 \u043a\u043e\u0436\u0430\u0442\u0430, \u0437\u0430\u0442\u043e\u0432\u0430 \u043f\u043e-\u043f\u043b\u044a\u0442\u043d\u0438\u044f\u0442 \u043c\u0443\u0441\u043a\u0443\u043b \u0434\u0430\u0432\u0430 \u043e\u043f\u043e\u0440\u0430 \u043e\u0442\u0432\u044a\u0442\u0440\u0435. \u0427\u0435\u0441\u0442\u043e\u0442\u0430\u0442\u0430 \u0435 \u0432\u0438\u043d\u0430\u0433\u0438 20 Hz \u0438 \u043d\u0430\u0433\u043e\u0440\u0435: \u043f\u043e\u0434 \u043d\u0435\u044f \u043b\u0438\u0446\u0435\u0442\u043e \u043f\u043e\u0442\u0440\u0435\u043f\u0432\u0430 \u043d\u0435\u043f\u0440\u0438\u044f\u0442\u043d\u043e.\n\n\u0421\u0435\u0442\u0438\u0432\u0435\u043d \u2014 \u0431\u043e\u0442\u043e\u043a\u0441 \u0435\u0444\u0435\u043a\u0442, \u043e\u0442\u043f\u0443\u0441\u043d\u0430\u0442\u0430 \u0447\u0435\u043b\u044e\u0441\u0442: \u0442\u043e\u043a\u044a\u0442 \u0434\u043e\u043a\u043e\u0441\u0432\u0430 \u0441\u0430\u043c\u043e \u043d\u0435\u0440\u0432\u0438\u0442\u0435 \u043d\u0430 \u043a\u043e\u0436\u0430\u0442\u0430, \u043c\u0443\u0441\u043a\u0443\u043b\u044a\u0442 \u043d\u0435 \u043c\u044a\u0440\u0434\u0430. \u0421\u0435\u0442\u0438\u0432\u043d\u0438\u044f\u0442 \u043f\u043e\u0442\u043e\u043a \u0441\u0432\u0430\u043b\u044f \u0442\u043e\u043d\u0443\u0441\u0430 \u043d\u0430 \u043c\u0443\u0441\u043a\u0443\u043b\u0438\u0442\u0435 \u2014 \u043b\u0438\u0446\u0435\u0442\u043e \u0441\u0435 \u043e\u0442\u043f\u0443\u0441\u043a\u0430.\n\n\u25cf\u25cf\u25cf \u0434\u043e\u043a\u0430\u0437\u0430\u043d\u043e \u043d\u0430 \u043b\u0438\u0446\u0435\u0442\u043e \u00b7 \u25cf\u25cf\u25cb \u0434\u043e\u043a\u0430\u0437\u0430\u043d\u043e \u0437\u0430 \u043c\u0435\u0445\u0430\u043d\u0438\u0437\u043c\u0430 \u00b7 \u25cf\u25cb\u25cb \u043b\u043e\u0433\u0438\u043a\u0430 \u0431\u0435\u0437 \u0438\u0437\u043c\u0435\u0440\u0432\u0430\u043d\u0435.\n\n\u0414\u043d\u0435\u0441 \u0431\u0435\u0437 \u043b\u0438\u0446\u0435: \u0431\u043e\u0442\u043e\u043a\u0441 \u0438\u043b\u0438 \u0444\u0438\u043b\u044a\u0440 \u043f\u0440\u0435\u0437 \u043f\u043e\u0441\u043b\u0435\u0434\u043d\u0438\u0442\u0435 2 \u0441\u0435\u0434\u043c\u0438\u0446\u0438, \u043f\u0435\u0439\u0441\u043c\u0435\u0439\u043a\u044a\u0440, \u0431\u0440\u0435\u043c\u0435\u043d\u043d\u043e\u0441\u0442, \u0435\u043f\u0438\u043b\u0435\u043f\u0441\u0438\u044f, \u0441\u043a\u043e\u0440\u043e\u0448\u043d\u0430 \u043e\u043f\u0435\u0440\u0430\u0446\u0438\u044f \u043d\u0430 \u043b\u0438\u0446\u0435\u0442\u043e, \u0440\u0430\u0437\u0434\u0440\u0430\u0437\u043d\u0435\u043d\u0430 \u043a\u043e\u0436\u0430, \u043f\u0430\u0440\u0430\u043b\u0438\u0437\u0430 \u043d\u0430 \u043b\u0438\u0446\u0435\u0432\u0438\u044f \u043d\u0435\u0440\u0432."

    .line 1100
    :goto_14
    invoke-static {v1, v2, v0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->sheet(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    return-void

    .line 1111
    :cond_18
    const-string v0, "Two kinds of current, two aims.\n\nMotor \u2014 lift, firm contour, depuff, contour: the impulse excites the motor branches of the facial nerve and the muscles contract by themselves, no effort, no expression lines. Face muscles weave into the skin, so a fuller muscle supports from within. Always 20 Hz or more.\n\nSensory \u2014 botox effect, relaxed jaw: only the skin\'s nerves are touched, the muscle does not move; the sensory input lowers muscle tone.\n\n\u25cf\u25cf\u25cf proven on the face \u00b7 \u25cf\u25cf\u25cb the mechanism proven \u00b7 \u25cf\u25cb\u25cb rationale only.\n\nNot today: botox or filler within 2 weeks, a pacemaker, pregnancy, epilepsy, recent facial surgery, irritated skin, facial palsy."

    goto :goto_14
.end method
