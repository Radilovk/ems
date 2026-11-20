.class public final Lcom/isaigu/gymapp/widget/XemsLocalConsent;
.super Ljava/lang/Object;
.source "XemsLocalConsent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/widget/XemsLocalConsent$SignPad;,
        Lcom/isaigu/gymapp/widget/XemsLocalConsent$Close;,
        Lcom/isaigu/gymapp/widget/XemsLocalConsent$ClearPad;,
        Lcom/isaigu/gymapp/widget/XemsLocalConsent$SignClick;,
        Lcom/isaigu/gymapp/widget/XemsLocalConsent$Signed;
    }
.end annotation


# static fields
.field static final CLOSE_BG:Ljava/lang/String; = "\u041f\u0440\u043e\u0447\u0435\u0442\u043e\u0445, \u0440\u0430\u0437\u0431\u0440\u0430\u0445 \u0438 \u043f\u0440\u0438\u0435\u043c\u0430\u043c \u0433\u043e\u0440\u043d\u043e\u0442\u043e."

.field static final CLOSE_EN:Ljava/lang/String; = "I have read, understood and accept the above."

.field static final ITEMS_BG:[Ljava/lang/String;

.field static final ITEMS_EN:[Ljava/lang/String;

.field static final PREFS:Ljava/lang/String; = "xems_user_profiles"

.field static final TITLE_BG:Ljava/lang/String; = "\u0418\u043d\u0444\u043e\u0440\u043c\u0438\u0440\u0430\u043d\u043e \u0441\u044a\u0433\u043b\u0430\u0441\u0438\u0435 \u0438 \u0434\u0435\u043a\u043b\u0430\u0440\u0430\u0446\u0438\u044f \u0437\u0430 EMS \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0438 \u0438 \u043f\u0440\u043e\u0446\u0435\u0434\u0443\u0440\u0438"

.field static final TITLE_EN:Ljava/lang/String; = "Informed consent and declaration for EMS training and treatments"

.field public static final VERSION:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 51
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u0417\u0430\u043f\u043e\u0437\u043d\u0430\u0442/\u0430 \u0441\u044a\u043c, \u0447\u0435 EMS (\u0435\u043b\u0435\u043a\u0442\u0440\u0438\u0447\u0435\u0441\u043a\u0430 \u043c\u0443\u0441\u043a\u0443\u043b\u043d\u0430 \u0441\u0442\u0438\u043c\u0443\u043b\u0430\u0446\u0438\u044f) \u0441\u0432\u0438\u0432\u0430 \u043c\u0443\u0441\u043a\u0443\u043b\u0438\u0442\u0435 \u0447\u0440\u0435\u0437 \u0442\u043e\u043a. \u041e\u0431\u0438\u0447\u0430\u0439\u043d\u0438 \u043f\u043e\u0441\u043b\u0435\u0434\u0438\u0446\u0438 \u0441\u0430 \u043c\u0443\u0441\u043a\u0443\u043b\u043d\u0430 \u0442\u0440\u0435\u0441\u043a\u0430, \u0443\u043c\u043e\u0440\u0430 \u0438 \u0437\u0430\u0447\u0435\u0440\u0432\u044f\u0432\u0430\u043d\u0435 \u043d\u0430 \u043a\u043e\u0436\u0430\u0442\u0430; \u043f\u0440\u0438 \u043f\u0440\u0435\u043a\u043e\u043c\u0435\u0440\u043d\u043e \u043d\u0430\u0442\u043e\u0432\u0430\u0440\u0432\u0430\u043d\u0435 \u0435 \u0432\u044a\u0437\u043c\u043e\u0436\u043d\u043e \u0443\u0432\u0440\u0435\u0436\u0434\u0430\u043d\u0435 \u043d\u0430 \u043c\u0443\u0441\u043a\u0443\u043b\u0438\u0442\u0435."

    aput-object v1, v0, v3

    const-string v1, "\u041d\u044f\u043c\u0430\u043c \u043f\u0440\u043e\u0442\u0438\u0432\u043e\u043f\u043e\u043a\u0430\u0437\u0430\u043d\u0438\u044f \u0437\u0430 EMS: \u0431\u0440\u0435\u043c\u0435\u043d\u043d\u043e\u0441\u0442; \u043f\u0435\u0439\u0441\u043c\u0435\u0439\u043a\u044a\u0440 \u0438\u043b\u0438 \u0434\u0440\u0443\u0433 \u0438\u043c\u043f\u043b\u0430\u043d\u0442\u0438\u0440\u0430\u043d \u0435\u043b\u0435\u043a\u0442\u0440\u043e\u043d\u0435\u043d \u0443\u0440\u0435\u0434; \u0441\u044a\u0440\u0434\u0435\u0447\u043d\u043e-\u0441\u044a\u0434\u043e\u0432\u043e \u0437\u0430\u0431\u043e\u043b\u044f\u0432\u0430\u043d\u0435 \u0438\u043b\u0438 \u0442\u0440\u043e\u043c\u0431\u043e\u0437\u0430; \u0445\u0435\u0440\u043d\u0438\u044f; \u0435\u043f\u0438\u043b\u0435\u043f\u0441\u0438\u044f; \u043e\u043d\u043a\u043e\u043b\u043e\u0433\u0438\u0447\u043d\u043e \u0437\u0430\u0431\u043e\u043b\u044f\u0432\u0430\u043d\u0435; \u0441\u043a\u043b\u043e\u043d\u043d\u043e\u0441\u0442 \u043a\u044a\u043c \u043a\u044a\u0440\u0432\u0435\u043d\u0435; \u043e\u0441\u0442\u0440\u043e \u0432\u044a\u0437\u043f\u0430\u043b\u0435\u043d\u0438\u0435, \u0438\u043d\u0444\u0435\u043a\u0446\u0438\u044f \u0438\u043b\u0438 \u0442\u0435\u043c\u043f\u0435\u0440\u0430\u0442\u0443\u0440\u0430; \u043e\u043f\u0435\u0440\u0430\u0446\u0438\u044f \u043f\u0440\u0435\u0437 \u043f\u043e\u0441\u043b\u0435\u0434\u043d\u0438\u0442\u0435 3 \u043c\u0435\u0441\u0435\u0446\u0430; \u0440\u0430\u043d\u0438 \u0432 \u0437\u043e\u043d\u0438\u0442\u0435 \u043d\u0430 \u0435\u043b\u0435\u043a\u0442\u0440\u043e\u0434\u0438\u0442\u0435. \u0410\u043a\u043e \u0438\u043c\u0430\u043c \u043d\u044f\u043a\u043e\u0435 \u043e\u0442 \u0442\u044f\u0445, \u0449\u0435 \u043f\u0440\u0435\u0434\u0441\u0442\u0430\u0432\u044f \u043f\u0438\u0441\u043c\u0435\u043d\u043e \u0440\u0430\u0437\u0440\u0435\u0448\u0435\u043d\u0438\u0435 \u043e\u0442 \u043b\u0435\u043a\u0430\u0440 \u043f\u0440\u0435\u0434\u0438 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430."

    aput-object v1, v0, v4

    const-string v1, "\u0429\u0435 \u0441\u044a\u043e\u0431\u0449\u0430\u0432\u0430\u043c \u043d\u0430 \u0442\u0440\u0435\u043d\u044c\u043e\u0440\u0430 \u0437\u0430 \u0432\u0441\u044f\u043a\u0430 \u043f\u0440\u043e\u043c\u044f\u043d\u0430 \u0432 \u0437\u0434\u0440\u0430\u0432\u0435\u0442\u043e \u0441\u0438 \u0438 \u0449\u0435 \u043f\u0440\u0435\u043a\u0440\u0430\u0442\u044f \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430 \u0432\u0435\u0434\u043d\u0430\u0433\u0430 \u043f\u0440\u0438 \u0431\u043e\u043b\u043a\u0430, \u0437\u0430\u043c\u0430\u044f\u043d\u043e\u0441\u0442, \u0437\u0430\u0442\u0440\u0443\u0434\u043d\u0435\u043d\u043e \u0434\u0438\u0448\u0430\u043d\u0435 \u0438\u043b\u0438 \u0434\u0440\u0443\u0433\u043e \u043d\u0435\u0440\u0430\u0437\u043f\u043e\u043b\u043e\u0436\u0435\u043d\u0438\u0435."

    aput-object v1, v0, v5

    const-string v1, "\u0421\u0438\u043b\u0430\u0442\u0430 \u043d\u0430 \u0438\u043c\u043f\u0443\u043b\u0441\u0430 \u0441\u0435 \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u0432\u0430 \u0441\u043f\u043e\u0440\u0435\u0434 \u043c\u043e\u0435\u0442\u043e \u0443\u0441\u0435\u0449\u0430\u043d\u0435 \u0438 \u0441 \u043c\u043e\u0435\u0442\u043e \u0443\u0447\u0430\u0441\u0442\u0438\u0435. \u0429\u0435 \u0441\u043f\u0430\u0437\u0432\u0430\u043c \u0443\u043a\u0430\u0437\u0430\u043d\u0438\u044f\u0442\u0430 \u043d\u0430 \u0442\u0440\u0435\u043d\u044c\u043e\u0440\u0430."

    aput-object v1, v0, v6

    const-string v1, "\u0423\u0447\u0430\u0441\u0442\u0432\u0430\u043c \u0434\u043e\u0431\u0440\u043e\u0432\u043e\u043b\u043d\u043e \u0438 \u043d\u0430 \u0441\u043e\u0431\u0441\u0442\u0432\u0435\u043d \u0440\u0438\u0441\u043a. \u0421\u0442\u0443\u0434\u0438\u043e\u0442\u043e \u0438 \u0442\u0440\u0435\u043d\u044c\u043e\u0440\u044a\u0442 \u043d\u0435 \u043d\u043e\u0441\u044f\u0442 \u043e\u0442\u0433\u043e\u0432\u043e\u0440\u043d\u043e\u0441\u0442 \u0437\u0430 \u0432\u0440\u0435\u0434\u0438 \u0437\u0430 \u0437\u0434\u0440\u0430\u0432\u0435\u0442\u043e \u043c\u0438, \u043f\u0440\u0438\u0447\u0438\u043d\u0435\u043d\u0438 \u043e\u0442 \u043d\u0435\u043f\u044a\u043b\u043d\u0438 \u0438\u043b\u0438 \u043d\u0435\u0432\u0435\u0440\u043d\u0438 \u0441\u0432\u0435\u0434\u0435\u043d\u0438\u044f \u0437\u0430 \u0437\u0434\u0440\u0430\u0432\u0435\u0442\u043e \u043c\u0438, \u043f\u0440\u0435\u043c\u044a\u043b\u0447\u0430\u043d\u043e \u0437\u0430\u0431\u043e\u043b\u044f\u0432\u0430\u043d\u0435 \u0438\u043b\u0438 \u043d\u0435\u0441\u043f\u0430\u0437\u0432\u0430\u043d\u0435 \u043d\u0430 \u0443\u043a\u0430\u0437\u0430\u043d\u0438\u044f\u0442\u0430. \u0422\u043e\u0432\u0430 \u043d\u0435 \u043e\u0433\u0440\u0430\u043d\u0438\u0447\u0430\u0432\u0430 \u043e\u0442\u0433\u043e\u0432\u043e\u0440\u043d\u043e\u0441\u0442\u0442\u0430 \u0438\u043c \u043f\u0440\u0438 \u0443\u043c\u0438\u0441\u044a\u043b \u0438\u043b\u0438 \u0433\u0440\u0443\u0431\u0430 \u043d\u0435\u0431\u0440\u0435\u0436\u043d\u043e\u0441\u0442 (\u0447\u043b. 94 \u043e\u0442 \u0417\u0430\u043a\u043e\u043d\u0430 \u0437\u0430 \u0437\u0430\u0434\u044a\u043b\u0436\u0435\u043d\u0438\u044f\u0442\u0430 \u0438 \u0434\u043e\u0433\u043e\u0432\u043e\u0440\u0438\u0442\u0435)."

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\u0421\u044a\u0433\u043b\u0430\u0441\u0435\u043d/\u043d\u0430 \u0441\u044a\u043c \u0441\u0442\u0443\u0434\u0438\u043e\u0442\u043e \u0434\u0430 \u043e\u0431\u0440\u0430\u0431\u043e\u0442\u0432\u0430 \u043b\u0438\u0447\u043d\u0438\u0442\u0435 \u043c\u0438 \u0434\u0430\u043d\u043d\u0438, \u0432\u043a\u043b\u044e\u0447\u0438\u0442\u0435\u043b\u043d\u043e \u0437\u0430 \u0437\u0434\u0440\u0430\u0432\u0435\u0442\u043e, \u0441\u0430\u043c\u043e \u0437\u0430 \u0431\u0435\u0437\u043e\u043f\u0430\u0441\u043d\u043e\u0442\u043e \u043f\u0440\u043e\u0432\u0435\u0436\u0434\u0430\u043d\u0435 \u043d\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0438\u0442\u0435, \u0441\u044a\u0433\u043b\u0430\u0441\u043d\u043e \u0420\u0435\u0433\u043b\u0430\u043c\u0435\u043d\u0442 (\u0415\u0421) 2016/679 (GDPR). \u041c\u043e\u0433\u0430 \u0434\u0430 \u043e\u0442\u0442\u0435\u0433\u043b\u044f \u0441\u044a\u0433\u043b\u0430\u0441\u0438\u0435\u0442\u043e \u0441\u0438 \u043f\u043e \u0432\u0441\u044f\u043a\u043e \u0432\u0440\u0435\u043c\u0435."

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u0414\u0435\u043a\u043b\u0430\u0440\u0430\u0446\u0438\u044f\u0442\u0430 \u0432\u0430\u0436\u0438 \u0437\u0430 \u0432\u0441\u0438\u0447\u043a\u0438 \u0441\u043b\u0435\u0434\u0432\u0430\u0449\u0438 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0438 \u0438 \u043f\u0440\u043e\u0446\u0435\u0434\u0443\u0440\u0438 \u0434\u043e \u043f\u0438\u0441\u043c\u0435\u043d\u043e\u0442\u043e \u045d \u043e\u0442\u0442\u0435\u0433\u043b\u044f\u043d\u0435."

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/widget/XemsLocalConsent;->ITEMS_BG:[Ljava/lang/String;

    .line 73
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "I understand that EMS (electrical muscle stimulation) contracts the muscles with a current. Usual effects are muscle soreness, fatigue and reddened skin; overload may injure the muscles."

    aput-object v1, v0, v3

    const-string v1, "I have no contraindication to EMS: pregnancy; a pacemaker or other implanted electronic device; cardiovascular disease or thrombosis; hernia; epilepsy; cancer; a bleeding tendency; acute inflammation, infection or fever; surgery in the last 3 months; wounds where the electrodes sit. If I have any of them, I will bring a doctor\'s written approval before training."

    aput-object v1, v0, v4

    const-string v1, "I will tell the trainer of any change in my health and stop at once on pain, dizziness, shortness of breath or any other discomfort."

    aput-object v1, v0, v5

    const-string v1, "The impulse strength is set by my own feeling and with my participation. I will follow the trainer\'s instructions."

    aput-object v1, v0, v6

    const-string v1, "I take part voluntarily and at my own risk. The studio and the trainer are not liable for harm to my health caused by incomplete or untrue information about my health, an undisclosed condition or not following the instructions. This does not limit their liability for intent or gross negligence (art. 94 of the Bulgarian Obligations and Contracts Act)."

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "I agree that the studio processes my personal data, health data included, only for the safe conduct of the training, under Regulation (EU) 2016/679 (GDPR). I may withdraw this consent at any time."

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "This declaration applies to all following trainings and treatments until withdrawn in writing."

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/widget/XemsLocalConsent;->ITEMS_EN:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static document(Ljava/lang/String;Landroid/graphics/Bitmap;J)Landroid/graphics/Bitmap;
    .registers 20

    .prologue
    .line 167
    const/16 v13, 0x4d8

    .line 168
    const/16 v14, 0x50

    .line 169
    new-instance v3, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v3, v1}, Landroid/text/TextPaint;-><init>(I)V

    .line 170
    const v1, -0xeeeeef

    invoke-virtual {v3, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 171
    const/high16 v1, 0x42200000    # 40.0f

    invoke-virtual {v3, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 172
    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 173
    new-instance v15, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v15, v1}, Landroid/text/TextPaint;-><init>(I)V

    .line 174
    const v1, -0xddddde

    invoke-virtual {v15, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 175
    const/high16 v1, 0x41e00000    # 28.0f

    invoke-virtual {v15, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 176
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLang;->isBg()Z

    move-result v1

    if-eqz v1, :cond_55

    sget-object v1, Lcom/isaigu/gymapp/widget/XemsLocalConsent;->ITEMS_BG:[Ljava/lang/String;

    .line 178
    :goto_37
    const/4 v2, 0x0

    :goto_38
    array-length v4, v1

    if-ge v2, v4, :cond_58

    .line 179
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v1, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    .line 177
    :cond_55
    sget-object v1, Lcom/isaigu/gymapp/widget/XemsLocalConsent;->ITEMS_EN:[Ljava/lang/String;

    goto :goto_37

    .line 181
    :cond_58
    const-string v1, "\u041f\u0440\u043e\u0447\u0435\u0442\u043e\u0445, \u0440\u0430\u0437\u0431\u0440\u0430\u0445 \u0438 \u043f\u0440\u0438\u0435\u043c\u0430\u043c \u0433\u043e\u0440\u043d\u043e\u0442\u043e."

    const-string v2, "I have read, understood and accept the above."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsLocalConsent;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    const/16 v4, 0x438

    .line 183
    new-instance v1, Landroid/text/StaticLayout;

    const-string v2, "\u0418\u043d\u0444\u043e\u0440\u043c\u0438\u0440\u0430\u043d\u043e \u0441\u044a\u0433\u043b\u0430\u0441\u0438\u0435 \u0438 \u0434\u0435\u043a\u043b\u0430\u0440\u0430\u0446\u0438\u044f \u0437\u0430 EMS \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0438 \u0438 \u043f\u0440\u043e\u0446\u0435\u0434\u0443\u0440\u0438"

    const-string v5, "Informed consent and declaration for EMS training and treatments"

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/widget/XemsLocalConsent;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const v6, 0x3f933333    # 1.15f

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 184
    new-instance v5, Landroid/text/StaticLayout;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v10, 0x3fa00000    # 1.25f

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v15

    move v8, v4

    invoke-direct/range {v5 .. v12}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 185
    const/16 v7, 0x104

    .line 186
    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v2

    add-int/2addr v2, v14

    add-int/lit8 v2, v2, 0x28

    invoke-virtual {v5}, Landroid/text/StaticLayout;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x3c

    add-int/lit8 v2, v2, 0x78

    add-int/2addr v2, v7

    add-int/2addr v2, v14

    .line 187
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v13, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 188
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 189
    const/4 v2, -0x1

    invoke-virtual {v9, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 191
    invoke-virtual {v9}, Landroid/graphics/Canvas;->save()I

    .line 192
    int-to-float v2, v14

    int-to-float v3, v14

    invoke-virtual {v9, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 193
    invoke-virtual {v1, v9}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 194
    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    .line 195
    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, 0x28

    add-int/2addr v1, v14

    .line 196
    invoke-virtual {v9}, Landroid/graphics/Canvas;->save()I

    .line 197
    int-to-float v2, v14

    int-to-float v3, v1

    invoke-virtual {v9, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 198
    invoke-virtual {v5, v9}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 199
    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    .line 200
    invoke-virtual {v5}, Landroid/text/StaticLayout;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, 0x3c

    add-int/2addr v1, v2

    .line 201
    const/4 v2, 0x1

    invoke-virtual {v15, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 202
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u041a\u043b\u0438\u0435\u043d\u0442: "

    const-string v5, "Client: "

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/widget/XemsLocalConsent;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p0, :cond_1c0

    :goto_ee
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    int-to-float v3, v14

    add-int/lit8 v5, v1, 0x22

    int-to-float v5, v5

    invoke-virtual {v9, v2, v3, v5, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 203
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 204
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u0414\u0430\u0442\u0430 \u0438 \u0447\u0430\u0441: "

    const-string v5, "Date and time: "

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/widget/XemsLocalConsent;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p2 .. p3}, Lcom/isaigu/gymapp/widget/XemsLocalConsent;->stamp(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   \u00b7   \u0432\u0435\u0440\u0441\u0438\u044f "

    const-string v5, "   \u00b7   version "

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/widget/XemsLocalConsent;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    int-to-float v3, v14

    add-int/lit8 v5, v1, 0x50

    int-to-float v5, v5

    invoke-virtual {v9, v2, v3, v5, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 206
    add-int/lit8 v10, v1, 0x78

    .line 207
    const/high16 v1, 0x3f800000    # 1.0f

    int-to-float v2, v4

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    int-to-float v3, v7

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 208
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 209
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 210
    const/4 v3, 0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v2, v1, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    int-to-float v2, v14

    int-to-float v3, v10

    const/4 v5, 0x0

    invoke-virtual {v9, v1, v2, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 211
    new-instance v6, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v6, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 212
    const v1, -0x777778

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 213
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 214
    int-to-float v2, v14

    add-int v1, v10, v7

    add-int/lit8 v1, v1, -0xa

    int-to-float v3, v1

    int-to-float v1, v14

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v4, v1

    add-int v1, v10, v7

    add-int/lit8 v1, v1, -0xa

    int-to-float v5, v1

    move-object v1, v9

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 215
    const/high16 v1, 0x41b00000    # 22.0f

    invoke-virtual {v15, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 216
    const v1, -0x99999a

    invoke-virtual {v15, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 217
    const-string v1, "\u041f\u043e\u0434\u043f\u0438\u0441"

    const-string v2, "Signature"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsLocalConsent;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    int-to-float v2, v14

    add-int v3, v10, v7

    add-int/lit8 v3, v3, 0x16

    int-to-float v3, v3

    invoke-virtual {v9, v1, v2, v3, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 218
    return-object v8

    .line 202
    :cond_1c0
    const-string p0, ""

    goto/16 :goto_ee
.end method

.method static dp(Landroid/content/Context;F)I
    .registers 3

    .prologue
    .line 474
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method static file(Landroid/content/Context;J)Ljava/io/File;
    .registers 8

    .prologue
    .line 118
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "consents"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 119
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_14

    .line 120
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 122
    :cond_14
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method static key(Landroid/content/Context;Ljava/lang/String;Z)Landroid/widget/TextView;
    .registers 7

    .prologue
    const v1, -0xbc5fb9

    .line 489
    const/high16 v2, 0x41800000    # 16.0f

    if-eqz p2, :cond_36

    const/4 v0, -0x1

    :goto_8
    const/4 v3, 0x1

    invoke-static {p0, p1, v2, v0, v3}, Lcom/isaigu/gymapp/widget/XemsLocalConsent;->label(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 490
    const/16 v0, 0x11

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 491
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 492
    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsLocalConsent;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 493
    if-eqz p2, :cond_3a

    move v0, v1

    :goto_24
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 494
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsLocalConsent;->dp(Landroid/content/Context;F)I

    move-result v0

    if-eqz p2, :cond_3e

    :goto_2f
    invoke-virtual {v3, v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 495
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 496
    return-object v2

    .line 489
    :cond_36
    const v0, -0x13100c

    goto :goto_8

    .line 493
    :cond_3a
    const v0, -0xf4e9dd

    goto :goto_24

    .line 494
    :cond_3e
    const v1, -0xe3c5ae

    goto :goto_2f
.end method

.method static label(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;
    .registers 7

    .prologue
    .line 478
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 479
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 480
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 481
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 482
    if-eqz p4, :cond_15

    .line 483
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 485
    :cond_15
    return-object v0
.end method

.method public static open(Landroid/app/Activity;Ljava/lang/String;Lcom/isaigu/gymapp/widget/XemsLocalConsent$Signed;)V
    .registers 14

    .prologue
    .line 230
    if-nez p0, :cond_3

    .line 316
    :goto_2
    return-void

    .line 233
    :cond_3
    new-instance v2, Landroid/app/Dialog;

    const v0, 0x103000a

    invoke-direct {v2, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 234
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 235
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 236
    const v0, -0xf9f4ec

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 237
    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsLocalConsent;->dp(Landroid/content/Context;F)I

    move-result v0

    .line 238
    invoke-virtual {v3, v0, v0, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 241
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 242
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 243
    const-string v0, "\u0418\u043d\u0444\u043e\u0440\u043c\u0438\u0440\u0430\u043d\u043e \u0441\u044a\u0433\u043b\u0430\u0441\u0438\u0435 \u0438 \u0434\u0435\u043a\u043b\u0430\u0440\u0430\u0446\u0438\u044f \u0437\u0430 EMS \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0438 \u0438 \u043f\u0440\u043e\u0446\u0435\u0434\u0443\u0440\u0438"

    const-string v1, "Informed consent and declaration for EMS training and treatments"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalConsent;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41a80000    # 21.0f

    const v5, -0x13100c

    const/4 v6, 0x1

    invoke-static {p0, v0, v1, v5, v6}, Lcom/isaigu/gymapp/widget/XemsLocalConsent;->label(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 244
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 245
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLang;->isBg()Z

    move-result v0

    if-eqz v0, :cond_bd

    sget-object v0, Lcom/isaigu/gymapp/widget/XemsLocalConsent;->ITEMS_BG:[Ljava/lang/String;

    .line 246
    :goto_49
    const/4 v1, 0x0

    :goto_4a
    array-length v5, v0

    if-ge v1, v5, :cond_c0

    .line 247
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 248
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 249
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/high16 v7, 0x41700000    # 15.0f

    const v8, -0xbc5fb9

    const/4 v9, 0x1

    invoke-static {p0, v6, v7, v8, v9}, Lcom/isaigu/gymapp/widget/XemsLocalConsent;->label(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v6

    .line 250
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x41d00000    # 26.0f

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsLocalConsent;->dp(Landroid/content/Context;F)I

    move-result v8

    const/4 v9, -0x2

    invoke-direct {v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    aget-object v6, v0, v1

    const/high16 v7, 0x41700000    # 15.0f

    const v8, -0x221c16

    const/4 v9, 0x0

    invoke-static {p0, v6, v7, v8, v9}, Lcom/isaigu/gymapp/widget/XemsLocalConsent;->label(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v6

    .line 252
    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsLocalConsent;->dp(Landroid/content/Context;F)I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 253
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, 0x0

    const/4 v9, -0x2

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v5, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 254
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 256
    const/high16 v7, 0x41400000    # 12.0f

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsLocalConsent;->dp(Landroid/content/Context;F)I

    move-result v7

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 257
    invoke-virtual {v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 246
    add-int/lit8 v1, v1, 0x1

    goto :goto_4a

    .line 245
    :cond_bd
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsLocalConsent;->ITEMS_EN:[Ljava/lang/String;

    goto :goto_49

    .line 259
    :cond_c0
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 260
    invoke-virtual {v0, v4}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 261
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/high16 v6, 0x3fa00000    # 1.25f

    invoke-direct {v1, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 265
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 266
    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsLocalConsent;->dp(Landroid/content/Context;F)I

    move-result v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v0, v4, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 267
    const-string v0, "\u041f\u0440\u043e\u0447\u0435\u0442\u043e\u0445, \u0440\u0430\u0437\u0431\u0440\u0430\u0445 \u0438 \u043f\u0440\u0438\u0435\u043c\u0430\u043c \u0433\u043e\u0440\u043d\u043e\u0442\u043e."

    const-string v4, "I have read, understood and accept the above."

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/widget/XemsLocalConsent;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v4, 0x41800000    # 16.0f

    const v5, -0x13100c

    const/4 v6, 0x1

    invoke-static {p0, v0, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsLocalConsent;->label(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 268
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_264

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_264

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "  \u00b7  "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_11e
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 269
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsLocalConsent;->stamp(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v4, 0x41700000    # 15.0f

    const v5, -0x6c503a

    const/4 v6, 0x0

    .line 268
    invoke-static {p0, v0, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsLocalConsent;->label(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 270
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 272
    const/high16 v5, 0x40c00000    # 6.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsLocalConsent;->dp(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 273
    invoke-virtual {v1, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 274
    new-instance v0, Lcom/isaigu/gymapp/widget/XemsLocalConsent$SignPad;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/widget/XemsLocalConsent$SignPad;-><init>(Landroid/content/Context;)V

    .line 275
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 276
    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 277
    const/high16 v5, 0x41600000    # 14.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsLocalConsent;->dp(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 278
    invoke-virtual {v0, v4}, Lcom/isaigu/gymapp/widget/XemsLocalConsent$SignPad;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 279
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 280
    const/high16 v5, 0x41600000    # 14.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsLocalConsent;->dp(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 281
    invoke-virtual {v1, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 282
    const-string v4, "\u041f\u043e\u0434\u043f\u0438\u0448\u0435\u0442\u0435 \u0441\u0435 \u0441 \u043f\u0440\u044a\u0441\u0442 \u0432 \u0431\u044f\u043b\u043e\u0442\u043e \u043f\u043e\u043b\u0435"

    const-string v5, "Sign with a finger in the white field"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsLocalConsent;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x41500000    # 13.0f

    const v6, -0x6c503a

    const/4 v7, 0x0

    invoke-static {p0, v4, v5, v6, v7}, Lcom/isaigu/gymapp/widget/XemsLocalConsent;->label(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    .line 284
    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 285
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 287
    const/high16 v6, 0x40c00000    # 6.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsLocalConsent;->dp(Landroid/content/Context;F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 288
    invoke-virtual {v1, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 290
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 291
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 292
    const-string v5, "\u041e\u0442\u043a\u0430\u0437"

    const-string v6, "Cancel"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/widget/XemsLocalConsent;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Lcom/isaigu/gymapp/widget/XemsLocalConsent;->key(Landroid/content/Context;Ljava/lang/String;Z)Landroid/widget/TextView;

    move-result-object v5

    .line 293
    const-string v6, "\u0418\u0437\u0447\u0438\u0441\u0442\u0438"

    const-string v7, "Clear"

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/widget/XemsLocalConsent;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {p0, v6, v7}, Lcom/isaigu/gymapp/widget/XemsLocalConsent;->key(Landroid/content/Context;Ljava/lang/String;Z)Landroid/widget/TextView;

    move-result-object v6

    .line 294
    const-string v7, "\u041f\u043e\u0434\u043f\u0438\u0441\u0432\u0430\u043c"

    const-string v8, "I sign"

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/widget/XemsLocalConsent;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {p0, v7, v8}, Lcom/isaigu/gymapp/widget/XemsLocalConsent;->key(Landroid/content/Context;Ljava/lang/String;Z)Landroid/widget/TextView;

    move-result-object v7

    .line 295
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 296
    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setAlpha(F)V

    .line 297
    iput-object v7, v0, Lcom/isaigu/gymapp/widget/XemsLocalConsent$SignPad;->onInk:Landroid/view/View;

    .line 298
    new-instance v8, Lcom/isaigu/gymapp/widget/XemsLocalConsent$Close;

    invoke-direct {v8, v2}, Lcom/isaigu/gymapp/widget/XemsLocalConsent$Close;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    new-instance v8, Lcom/isaigu/gymapp/widget/XemsLocalConsent$ClearPad;

    invoke-direct {v8, v0, v7}, Lcom/isaigu/gymapp/widget/XemsLocalConsent$ClearPad;-><init>(Lcom/isaigu/gymapp/widget/XemsLocalConsent$SignPad;Landroid/view/View;)V

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    new-instance v8, Lcom/isaigu/gymapp/widget/XemsLocalConsent$SignClick;

    invoke-direct {v8, v2, v0, p2}, Lcom/isaigu/gymapp/widget/XemsLocalConsent$SignClick;-><init>(Landroid/app/Dialog;Lcom/isaigu/gymapp/widget/XemsLocalConsent$SignPad;Lcom/isaigu/gymapp/widget/XemsLocalConsent$Signed;)V

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, 0x0

    const/high16 v9, 0x42500000    # 52.0f

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsLocalConsent;->dp(Landroid/content/Context;F)I

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v0, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 302
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x0

    const/high16 v8, 0x42500000    # 52.0f

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsLocalConsent;->dp(Landroid/content/Context;F)I

    move-result v8

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v0, v5, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 303
    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsLocalConsent;->dp(Landroid/content/Context;F)I

    move-result v5

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 304
    invoke-virtual {v4, v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 305
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x0

    const/high16 v6, 0x42500000    # 52.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsLocalConsent;->dp(Landroid/content/Context;F)I

    move-result v6

    const v8, 0x3fcccccd    # 1.6f

    invoke-direct {v0, v5, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 306
    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsLocalConsent;->dp(Landroid/content/Context;F)I

    move-result v5

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 307
    invoke-virtual {v4, v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 308
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v0, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 310
    const/high16 v5, 0x41600000    # 14.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsLocalConsent;->dp(Landroid/content/Context;F)I

    move-result v5

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 311
    invoke-virtual {v1, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 312
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v0, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 314
    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 315
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto/16 :goto_2

    .line 268
    :cond_264
    const-string v0, ""

    goto/16 :goto_11e
.end method

.method static prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3

    .prologue
    .line 100
    const-string v0, "xems_user_profiles"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static save(Landroid/content/Context;JLjava/lang/String;Landroid/graphics/Bitmap;J)Z
    .registers 14

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 146
    if-eqz p0, :cond_c

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_c

    if-nez p4, :cond_e

    :cond_c
    move v0, v1

    .line 161
    :goto_d
    return v0

    .line 150
    :cond_e
    :try_start_e
    invoke-static {p3, p4, p5, p6}, Lcom/isaigu/gymapp/widget/XemsLocalConsent;->document(Ljava/lang/String;Landroid/graphics/Bitmap;J)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 151
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/widget/XemsLocalConsent;->file(Landroid/content/Context;J)Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_1b} :catch_60

    .line 153
    :try_start_1b
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v2, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_6a

    .line 155
    :try_start_22
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 157
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLocalConsent;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "consent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "consentAt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p5, p6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_5f} :catch_60

    goto :goto_d

    .line 159
    :catch_60
    move-exception v0

    .line 160
    const-string v2, "xems_consent"

    const-string v3, "save"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    .line 161
    goto :goto_d

    .line 155
    :catchall_6a
    move-exception v0

    :try_start_6b
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 156
    throw v0
    :try_end_6f
    .catch Ljava/lang/Throwable; {:try_start_6b .. :try_end_6f} :catch_60
.end method

.method public static signedAt(Landroid/content/Context;J)J
    .registers 8

    .prologue
    const-wide/16 v0, 0x0

    .line 114
    if-nez p0, :cond_5

    :goto_4
    return-wide v0

    :cond_5
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLocalConsent;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "consentAt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_4
.end method

.method public static signedVersion(Landroid/content/Context;J)I
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 105
    if-nez p0, :cond_4

    :goto_3
    return v0

    :cond_4
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLocalConsent;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "consent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_3
.end method

.method static stamp(J)Ljava/lang/String;
    .registers 6

    .prologue
    .line 126
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd.MM.yyyy HH:mm"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static status(Landroid/content/Context;J)Ljava/lang/String;
    .registers 8

    .prologue
    .line 131
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_2f

    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/widget/XemsLocalConsent;->signedVersion(Landroid/content/Context;J)I

    move-result v0

    .line 132
    :goto_a
    const/4 v1, 0x1

    if-lt v0, v1, :cond_31

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u2713 \u041f\u043e\u0434\u043f\u0438\u0441\u0430\u043d\u043e \u043d\u0430 "

    const-string v2, "\u2713 Signed on "

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsLocalConsent;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/widget/XemsLocalConsent;->signedAt(Landroid/content/Context;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsLocalConsent;->stamp(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    :goto_2e
    return-object v0

    .line 131
    :cond_2f
    const/4 v0, 0x0

    goto :goto_a

    .line 135
    :cond_31
    if-lez v0, :cond_3c

    .line 136
    const-string v0, "\u0422\u0435\u043a\u0441\u0442\u044a\u0442 \u0435 \u043e\u0431\u043d\u043e\u0432\u0435\u043d \u2014 \u043d\u0443\u0436\u0435\u043d \u0435 \u043d\u043e\u0432 \u043f\u043e\u0434\u043f\u0438\u0441"

    const-string v1, "The text was updated \u2014 a new signature is needed"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalConsent;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2e

    .line 138
    :cond_3c
    const-string v0, "\u041d\u0435 \u0435 \u043f\u043e\u0434\u043f\u0438\u0441\u0430\u043d\u043e"

    const-string v1, "Not signed"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalConsent;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2e
.end method

.method static tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 96
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valid(Landroid/content/Context;J)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 110
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/widget/XemsLocalConsent;->signedVersion(Landroid/content/Context;J)I

    move-result v1

    if-lt v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static view(Landroid/app/Activity;J)V
    .registers 10

    .prologue
    .line 321
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/widget/XemsLocalConsent;->file(Landroid/content/Context;J)Ljava/io/File;

    move-result-object v0

    .line 322
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_b

    .line 340
    :goto_a
    return-void

    .line 325
    :cond_b
    new-instance v1, Landroid/app/Dialog;

    const v2, 0x103000a

    invoke-direct {v1, p0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 326
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 327
    const v3, -0xf9f4ec

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 328
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 329
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 330
    new-instance v0, Lcom/isaigu/gymapp/widget/XemsLocalConsent$Close;

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalConsent$Close;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 332
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 334
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 335
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 336
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_4f} :catch_50

    goto :goto_a

    .line 337
    :catch_50
    move-exception v0

    .line 338
    const-string v1, "xems_consent"

    const-string v2, "view"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a
.end method
