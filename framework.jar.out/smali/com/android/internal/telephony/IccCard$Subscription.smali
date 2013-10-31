.class public Lcom/android/internal/telephony/IccCard$Subscription;
.super Ljava/lang/Object;
.source "IccCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Subscription"
.end annotation


# instance fields
.field public appId:Ljava/lang/String;

.field public appLabel:Ljava/lang/String;

.field public appType:Ljava/lang/String;

.field public iccId:Ljava/lang/String;

.field public slotId:I

.field public subIndex:I

.field public subNum:I

.field public subStatus:I

.field final synthetic this$0:Lcom/android/internal/telephony/IccCard;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/IccCard;)V
    .locals 2
    .parameter

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 284
    iput-object p1, p0, Lcom/android/internal/telephony/IccCard$Subscription;->this$0:Lcom/android/internal/telephony/IccCard;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 285
    iput v0, p0, Lcom/android/internal/telephony/IccCard$Subscription;->slotId:I

    .line 286
    iput v0, p0, Lcom/android/internal/telephony/IccCard$Subscription;->subIndex:I

    .line 287
    iput v0, p0, Lcom/android/internal/telephony/IccCard$Subscription;->subNum:I

    .line 288
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/internal/telephony/IccCard$Subscription;->subStatus:I

    .line 289
    iput-object v1, p0, Lcom/android/internal/telephony/IccCard$Subscription;->appId:Ljava/lang/String;

    .line 290
    iput-object v1, p0, Lcom/android/internal/telephony/IccCard$Subscription;->appLabel:Ljava/lang/String;

    .line 291
    iput-object v1, p0, Lcom/android/internal/telephony/IccCard$Subscription;->appType:Ljava/lang/String;

    .line 292
    iput-object v1, p0, Lcom/android/internal/telephony/IccCard$Subscription;->iccId:Ljava/lang/String;

    .line 293
    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/android/internal/telephony/IccCard$Subscription;)Lcom/android/internal/telephony/IccCard$Subscription;
    .locals 2
    .parameter "from"

    .prologue
    .line 325
    if-eqz p1, :cond_3

    .line 326
    iget v0, p1, Lcom/android/internal/telephony/IccCard$Subscription;->slotId:I

    iput v0, p0, Lcom/android/internal/telephony/IccCard$Subscription;->slotId:I

    .line 327
    iget v0, p1, Lcom/android/internal/telephony/IccCard$Subscription;->subIndex:I

    iput v0, p0, Lcom/android/internal/telephony/IccCard$Subscription;->subIndex:I

    .line 328
    iget v0, p1, Lcom/android/internal/telephony/IccCard$Subscription;->subNum:I

    iput v0, p0, Lcom/android/internal/telephony/IccCard$Subscription;->subNum:I

    .line 329
    iget v0, p1, Lcom/android/internal/telephony/IccCard$Subscription;->subStatus:I

    iput v0, p0, Lcom/android/internal/telephony/IccCard$Subscription;->subStatus:I

    .line 330
    iget-object v0, p1, Lcom/android/internal/telephony/IccCard$Subscription;->appId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 331
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/IccCard$Subscription;->appId:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard$Subscription;->appId:Ljava/lang/String;

    .line 333
    :cond_0
    iget-object v0, p1, Lcom/android/internal/telephony/IccCard$Subscription;->appLabel:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 334
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/IccCard$Subscription;->appLabel:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard$Subscription;->appLabel:Ljava/lang/String;

    .line 336
    :cond_1
    iget-object v0, p1, Lcom/android/internal/telephony/IccCard$Subscription;->appType:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 337
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/IccCard$Subscription;->appType:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard$Subscription;->appType:Ljava/lang/String;

    .line 339
    :cond_2
    iget-object v0, p1, Lcom/android/internal/telephony/IccCard$Subscription;->iccId:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 340
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/IccCard$Subscription;->iccId:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard$Subscription;->iccId:Ljava/lang/String;

    .line 343
    :cond_3
    return-object p0
.end method

.method public equals(Lcom/android/internal/telephony/IccCard$Subscription;)Z
    .locals 2
    .parameter "sub"

    .prologue
    .line 306
    if-eqz p1, :cond_8

    .line 307
    iget v0, p0, Lcom/android/internal/telephony/IccCard$Subscription;->slotId:I

    iget v1, p1, Lcom/android/internal/telephony/IccCard$Subscription;->slotId:I

    if-ne v0, v1, :cond_9

    iget v0, p0, Lcom/android/internal/telephony/IccCard$Subscription;->subIndex:I

    iget v1, p1, Lcom/android/internal/telephony/IccCard$Subscription;->subIndex:I

    if-ne v0, v1, :cond_9

    iget v0, p0, Lcom/android/internal/telephony/IccCard$Subscription;->subNum:I

    iget v1, p1, Lcom/android/internal/telephony/IccCard$Subscription;->subNum:I

    if-ne v0, v1, :cond_9

    iget v0, p0, Lcom/android/internal/telephony/IccCard$Subscription;->subStatus:I

    iget v1, p1, Lcom/android/internal/telephony/IccCard$Subscription;->subStatus:I

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$Subscription;->appId:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/internal/telephony/IccCard$Subscription;->appId:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$Subscription;->appId:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$Subscription;->appId:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/IccCard$Subscription;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$Subscription;->appLabel:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/android/internal/telephony/IccCard$Subscription;->appLabel:Ljava/lang/String;

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$Subscription;->appLabel:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$Subscription;->appLabel:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/IccCard$Subscription;->appLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$Subscription;->appType:Ljava/lang/String;

    if-nez v0, :cond_4

    iget-object v0, p1, Lcom/android/internal/telephony/IccCard$Subscription;->appType:Ljava/lang/String;

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$Subscription;->appType:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$Subscription;->appType:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/IccCard$Subscription;->appType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$Subscription;->iccId:Ljava/lang/String;

    if-nez v0, :cond_6

    iget-object v0, p1, Lcom/android/internal/telephony/IccCard$Subscription;->iccId:Ljava/lang/String;

    if-eqz v0, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$Subscription;->iccId:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$Subscription;->iccId:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/IccCard$Subscription;->iccId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 317
    :cond_7
    const/4 v0, 0x1

    .line 322
    :goto_0
    return v0

    .line 320
    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard$Subscription;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v1, "Subscription.equals: sub == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_9
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Subscription = { slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/IccCard$Subscription;->slotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/IccCard$Subscription;->subIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subNum = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/IccCard$Subscription;->subNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/IccCard$Subscription;->subStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard$Subscription;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appLabel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard$Subscription;->appLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard$Subscription;->appType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", iccId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard$Subscription;->iccId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
