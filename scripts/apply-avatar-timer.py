#!/usr/bin/env python3
"""Remove avatar wave fill; show interval seconds only while training is running."""

from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
HOLDER = (
    ROOT
    / "build"
    / "decompiled"
    / "smali_classes2"
    / "com"
    / "isaigu"
    / "gymapp"
    / "train"
    / "TrainViewHolder.smali"
)

UPDATE_TIME_OLD = """.method private updateTime()V
    .locals 6

    .line 291
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getData()Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    .line 293
    .local v0, "programDataBean":Lcom/isaigu/gymapp/bean/ProgramDataBean;
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getData()Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    move-result-object v1

    iget v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    add-int/lit8 v1, v1, 0x1

    .line 295
    .local v1, "waveValue":I
    const/4 v2, 0x0

    .line 296
    .local v2, "waveProgress":I
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getData()Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    move-result-object v3

    iget-boolean v3, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->inStart:Z

    if-eqz v3, :cond_0

    .line 297
    iget-object v3, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0600bb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 298
    .local v3, "waveColor":I
    iget v4, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    if-lez v4, :cond_1

    .line 299
    mul-int/lit8 v4, v1, 0x1e

    iget v5, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    div-int v2, v4, v5

    goto :goto_0

    .line 302
    .end local v3    # "waveColor":I
    :cond_0
    iget-object v3, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0600bc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 303
    .restart local v3    # "waveColor":I
    iget v4, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    if-lez v4, :cond_1

    .line 304
    mul-int/lit8 v4, v1, 0x1e

    iget v5, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    div-int v2, v4, v5

    .line 307
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v4, v4, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->waveBallProgressValue:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    iget-object v4, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v4, v4, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->waveBallProgressValue:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 309
    iget-object v4, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v4, v4, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->waveBallProgressActView:Lcom/isaigu/gymapp/widget/WaveBallProgress;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/isaigu/gymapp/widget/WaveBallProgress;->setVisibility(I)V

    .line 310
    iget-object v4, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v4, v4, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->waveBallProgressActView:Lcom/isaigu/gymapp/widget/WaveBallProgress;

    invoke-virtual {v4, v3}, Lcom/isaigu/gymapp/widget/WaveBallProgress;->setWaveColor(I)V

    .line 311
    iget-object v4, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v4, v4, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->waveBallProgressActView:Lcom/isaigu/gymapp/widget/WaveBallProgress;

    invoke-virtual {v4, v2}, Lcom/isaigu/gymapp/widget/WaveBallProgress;->setProgress(I)V

    .line 313
    iget-object v4, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v4, v4, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->time:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    iget v5, v5, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I

    invoke-static {v5}, Lcom/isaigu/gymapp/mgr/CommonUtils;->formatTime(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    return-void
.end method"""

UPDATE_TIME_NEW = """.method private updateTime()V
    .locals 5

    .line 291
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getData()Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    move-result-object v0

    .line 293
    iget v1, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    add-int/lit8 v1, v1, 0x1

    .line 295
    iget-object v2, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v2, v2, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->waveBallProgressActView:Lcom/isaigu/gymapp/widget/WaveBallProgress;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/widget/WaveBallProgress;->setVisibility(I)V

    .line 296
    iget-boolean v2, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-eqz v2, :cond_hide

    .line 297
    iget-object v2, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v2, v2, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->waveBallProgressValue:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 298
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    iget-boolean v2, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->inStart:Z

    if-eqz v2, :cond_pause_color

    iget-object v2, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600bb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    goto :goto_color

    .line 300
    :cond_pause_color
    iget-object v2, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600bc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 301
    :goto_color
    iget-object v3, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v3, v3, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->waveBallProgressValue:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_time

    .line 303
    :cond_hide
    iget-object v2, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v2, v2, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->waveBallProgressValue:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 305
    :goto_time
    iget-object v2, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v2, v2, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->time:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    iget v3, v3, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I

    invoke-static {v3}, Lcom/isaigu/gymapp/mgr/CommonUtils;->formatTime(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    return-void
.end method"""


def patch_update_time() -> None:
    text = HOLDER.read_text(encoding="utf-8")
    if "cond_hide" in text:
        print("TrainViewHolder.updateTime: already patched")
        return
    if UPDATE_TIME_OLD not in text:
        raise RuntimeError("TrainViewHolder.updateTime marker not found")
    text = text.replace(UPDATE_TIME_OLD, UPDATE_TIME_NEW, 1)
    HOLDER.write_text(text, encoding="utf-8")
    print("TrainViewHolder.updateTime: removed wave fill, gated seconds on start")


def main() -> None:
    patch_update_time()
    print("Avatar timer patches applied.")


if __name__ == "__main__":
    main()
