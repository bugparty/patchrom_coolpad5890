.class public abstract Lcom/android/internal/telephony/IccRecords;
.super Landroid/os/Handler;
.source "IccRecords.java"

# interfaces
.implements Lcom/android/internal/telephony/IccConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IccRecords$IccRecordLoaded;,
        Lcom/android/internal/telephony/IccRecords$newMessageContext;
    }
.end annotation


# static fields
.field protected static final BASEINDEX_PB:I = 0x1

.field protected static final BASEINDEX_SMS:I = 0x1

.field public static final CARD_INIT_STATE_COMPLETE:I = 0x5

.field public static final CARD_INIT_STATE_GET_ADN_INFO:I = 0x4

.field public static final CARD_INIT_STATE_GET_ADN_PARAM:I = 0x3

.field public static final CARD_INIT_STATE_GET_SMS_INFO:I = 0x2

.field public static final CARD_INIT_STATE_GET_SMS_PARAM:I = 0x1

.field public static final CARD_INIT_STATE_UNINIT:I = 0x0

.field public static final CARD_RECORDS_CLEAR:I = 0x3

.field public static final CARD_RECORDS_LOADED:I = 0x1

.field public static final CARD_RECORDS_UNACTIVE:I = 0x2

.field protected static final DBG:Z = true

.field protected static final EVENT_CARD_PBMPARAM1_DONE:I = 0x2b

.field protected static final EVENT_CARD_PBMPARAM2_DONE:I = 0x2c

.field protected static final EVENT_CARD_PBM_READY:I = 0x29

.field protected static final EVENT_CARD_SMSPARAM_DONE:I = 0x2a

.field protected static final EVENT_GET_ADN_DONE:I = 0x2e

.field protected static final EVENT_GET_ALL_ADN_DONE:I = 0x2d

.field public static final EVENT_GET_ICC_RECORD_DONE:I = 0x64

.field protected static final EVENT_SET_MSISDN_DONE:I = 0x1e

.field protected static final SPN_RULE_SHOW_PLMN:I = 0x2

.field protected static final SPN_RULE_SHOW_SPN:I = 0x1

.field protected static final UNINITIALIZED:I = -0x1

.field protected static final UNKNOWN:I

.field protected static currentIndex:I

.field protected static isNewSms:Z


# instance fields
.field public IsActive:I

.field protected SMSInitCompleteRegistrants:Landroid/os/RegistrantList;

.field protected adnCache:Lcom/android/internal/telephony/AdnRecordCache;

.field public bCardAdnInited:Z

.field public bCardSmsInited:Z

.field protected countVoiceMessages:I

.field public iccid:Ljava/lang/String;

.field protected isRefresh:Z

.field protected isVoiceMailFixed:Z

.field public mCM:Lcom/android/internal/telephony/CommandsInterface;

.field public mCardAdnMax:I

.field public mCardAdnNameMax:I

.field public mCardAdnNumberMax:I

.field public mCardAdnUsed:I

.field public mCardInitState:I

.field public mCardSmsMax:I

.field public mCardSmsUsed:I

.field protected mContext:Landroid/content/Context;

.field public mCurReadIndex:I

.field protected mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

.field protected mIccRefreshRegistrants:Landroid/os/RegistrantList;

.field public mMaxReadCount:I

.field public mReadAdnTotal:I

.field public mReadSmsTotal:I

.field mRuimCard:Lcom/android/internal/telephony/cdma/RuimCard;

.field mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

.field mUtkService:Lcom/android/internal/telephony/cat/CatService;

.field protected mailboxIndex:I

.field protected mncLength:I

.field protected msisdn:Ljava/lang/String;

.field protected msisdnTag:Ljava/lang/String;

.field protected newVoiceMailNum:Ljava/lang/String;

.field protected newVoiceMailTag:Ljava/lang/String;

.field protected phone:Lcom/android/internal/telephony/PhoneBase;

.field protected recordsLoadedRegistrants:Landroid/os/RegistrantList;

.field protected recordsRequested:Z

.field protected recordsToLoad:I

.field protected spn:Ljava/lang/String;

.field protected spnDisplayCondition:I

.field public uimid:Ljava/lang/String;

.field public uimprl:Ljava/lang/String;

.field protected voiceMailNum:Ljava/lang/String;

.field protected voiceMailTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, -0x1

    sput v0, Lcom/android/internal/telephony/IccRecords;->currentIndex:I

    .line 44
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/IccRecords;->isNewSms:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 4
    .parameter "p"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 172
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 49
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsLoadedRegistrants:Landroid/os/RegistrantList;

    .line 50
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mIccRefreshRegistrants:Landroid/os/RegistrantList;

    .line 51
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccRecords;->SMSInitCompleteRegistrants:Landroid/os/RegistrantList;

    .line 58
    iput-boolean v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsRequested:Z

    .line 63
    iput v3, p0, Lcom/android/internal/telephony/IccRecords;->IsActive:I

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/IccRecords;->msisdn:Ljava/lang/String;

    .line 65
    iput-object v2, p0, Lcom/android/internal/telephony/IccRecords;->msisdnTag:Ljava/lang/String;

    .line 66
    iput-object v2, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailNum:Ljava/lang/String;

    .line 67
    iput-object v2, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailTag:Ljava/lang/String;

    .line 68
    iput-object v2, p0, Lcom/android/internal/telephony/IccRecords;->newVoiceMailNum:Ljava/lang/String;

    .line 69
    iput-object v2, p0, Lcom/android/internal/telephony/IccRecords;->newVoiceMailTag:Ljava/lang/String;

    .line 70
    iput-boolean v1, p0, Lcom/android/internal/telephony/IccRecords;->isVoiceMailFixed:Z

    .line 71
    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->countVoiceMessages:I

    .line 73
    iput v3, p0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 74
    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->mailboxIndex:I

    .line 86
    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->mCardInitState:I

    .line 173
    iput-boolean v1, p0, Lcom/android/internal/telephony/IccRecords;->isRefresh:Z

    .line 174
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mContext:Landroid/content/Context;

    .line 175
    iput-object p1, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    .line 176
    return-void
.end method


# virtual methods
.method public abstract deleteCardSmsbyIndex(I)V
.end method

.method public fetchCardSmsAndPBM(I)V
    .locals 8
    .parameter "state"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 336
    iput p1, p0, Lcom/android/internal/telephony/IccRecords;->mCardInitState:I

    .line 337
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IccRecords:fetchCardSmsAndPBM :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/IccRecords;->mCardInitState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccRecords;->log(Ljava/lang/String;)V

    .line 339
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->mCardInitState:I

    packed-switch v1, :pswitch_data_0

    .line 426
    :goto_0
    return-void

    .line 342
    :pswitch_0
    iput-boolean v3, p0, Lcom/android/internal/telephony/IccRecords;->bCardSmsInited:Z

    .line 343
    iput v4, p0, Lcom/android/internal/telephony/IccRecords;->mCurReadIndex:I

    .line 344
    iput v3, p0, Lcom/android/internal/telephony/IccRecords;->mReadSmsTotal:I

    .line 345
    iput v3, p0, Lcom/android/internal/telephony/IccRecords;->mCardSmsUsed:I

    .line 348
    invoke-static {v4}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getSmsSendpduCodeType(I)I

    move-result v1

    if-ne v1, v7, :cond_0

    .line 350
    const/16 v1, 0x3c

    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->mCardSmsMax:I

    .line 355
    :goto_1
    iput-boolean v3, p0, Lcom/android/internal/telephony/IccRecords;->bCardAdnInited:Z

    .line 356
    iput v3, p0, Lcom/android/internal/telephony/IccRecords;->mReadAdnTotal:I

    .line 357
    iput v3, p0, Lcom/android/internal/telephony/IccRecords;->mCardAdnUsed:I

    .line 358
    iput v3, p0, Lcom/android/internal/telephony/IccRecords;->mCardAdnMax:I

    .line 359
    iput v4, p0, Lcom/android/internal/telephony/IccRecords;->mCurReadIndex:I

    .line 360
    iput v3, p0, Lcom/android/internal/telephony/IccRecords;->mCardAdnNumberMax:I

    .line 361
    iput v3, p0, Lcom/android/internal/telephony/IccRecords;->mCardAdnNameMax:I

    .line 362
    const/16 v1, 0xa

    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->mMaxReadCount:I

    .line 364
    invoke-virtual {p0, v3, v3, v5}, Lcom/android/internal/telephony/IccRecords;->handleSmsParam(III)V

    .line 365
    invoke-virtual {p0, v3, v3, v5}, Lcom/android/internal/telephony/IccRecords;->handlePbParam(III)V

    goto :goto_0

    .line 352
    :cond_0
    iput v3, p0, Lcom/android/internal/telephony/IccRecords;->mCardSmsMax:I

    goto :goto_1

    .line 370
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccRecords;->getCardSmsParam()V

    goto :goto_0

    .line 376
    :pswitch_2
    iget-boolean v1, p0, Lcom/android/internal/telephony/IccRecords;->isRefresh:Z

    if-eqz v1, :cond_1

    .line 377
    iput-boolean v3, p0, Lcom/android/internal/telephony/IccRecords;->isRefresh:Z

    .line 378
    const-string v1, "IccRecords:fetchCardSmsAndPBM Sleep for refresh"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccRecords;->log(Ljava/lang/String;)V

    .line 380
    const-wide/16 v1, 0x7d0

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    :cond_1
    :goto_2
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->mCurReadIndex:I

    iget v2, p0, Lcom/android/internal/telephony/IccRecords;->mCardSmsMax:I

    if-gt v1, v2, :cond_2

    .line 387
    sput-boolean v3, Lcom/android/internal/telephony/IccRecords;->isNewSms:Z

    .line 388
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->mCurReadIndex:I

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccRecords;->getAllCardSms(I)V

    goto :goto_0

    .line 381
    :catch_0
    move-exception v0

    .line 383
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 392
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_2
    iput-boolean v4, p0, Lcom/android/internal/telephony/IccRecords;->bCardSmsInited:Z

    .line 393
    iput v5, p0, Lcom/android/internal/telephony/IccRecords;->mCardInitState:I

    .line 395
    invoke-static {v4}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getSmsSendpduCodeType(I)I

    move-result v1

    if-ne v1, v7, :cond_3

    .line 397
    const-string v1, "IccRecords:fetchCardSmsAndPBM :SMS Init Complete"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccRecords;->log(Ljava/lang/String;)V

    .line 398
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->SMSInitCompleteRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v6, v6, v6}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 404
    :cond_3
    :pswitch_3
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->mCardSmsMax:I

    iget v2, p0, Lcom/android/internal/telephony/IccRecords;->mCardSmsUsed:I

    invoke-virtual {p0, v1, v2, v4}, Lcom/android/internal/telephony/IccRecords;->handleSmsParam(III)V

    .line 405
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccRecords;->getCardPBMParam()V

    goto :goto_0

    .line 409
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccRecords;->getCardAllPBMInfo()V

    goto :goto_0

    .line 413
    :pswitch_5
    iput-boolean v4, p0, Lcom/android/internal/telephony/IccRecords;->bCardAdnInited:Z

    .line 414
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->mCardAdnMax:I

    iget v2, p0, Lcom/android/internal/telephony/IccRecords;->mCardAdnUsed:I

    invoke-virtual {p0, v1, v2, v4}, Lcom/android/internal/telephony/IccRecords;->handlePbParam(III)V

    goto/16 :goto_0

    .line 339
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getAdnCache()Lcom/android/internal/telephony/AdnRecordCache;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    return-object v0
.end method

.method public abstract getAllCardSms(I)V
.end method

.method public getCardAllPBMInfo()V
    .locals 4

    .prologue
    const/16 v3, 0x2d

    .line 317
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/UiccConstants$AppType;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/UiccConstants$AppType;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getCardImportType(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 320
    const-string v0, "getCardAllPBMInfo: is usim 3G"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccRecords;->log(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/IccRecords;->sendEmptyMessage(I)Z

    .line 328
    :goto_0
    return-void

    .line 323
    :cond_0
    const-string v0, "getCardAllPBMInfo: is sim 2G or CARD_IMPORT_TYPE_AT"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccRecords;->log(Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    const/16 v1, 0x6f3a

    const/16 v2, 0x6f4a

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/IccRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/AdnRecordCache;->requestLoadAllAdnLike(IILandroid/os/Message;)V

    goto :goto_0
.end method

.method public getCardPBMParam()V
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x2b

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCardAdnParam1(Landroid/os/Message;)V

    .line 306
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x2c

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCardAdnParam2(Landroid/os/Message;)V

    .line 307
    return-void
.end method

.method public getCardSmsParam()V
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x2a

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCardSmsParam(Landroid/os/Message;)V

    .line 283
    return-void
.end method

.method public abstract getDisplayRule(Ljava/lang/String;)I
.end method

.method public abstract getIMSI()Ljava/lang/String;
.end method

.method public abstract getIccSms(I)V
.end method

.method public getIsimRecords()Lcom/android/internal/telephony/ims/IsimRecords;
    .locals 1

    .prologue
    .line 572
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMsisdnAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->msisdnTag:Ljava/lang/String;

    return-object v0
.end method

.method public getMsisdnNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->msisdn:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getOperatorNumeric()Ljava/lang/String;
.end method

.method public getRecordsLoaded()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 504
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRecordsLoaded :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",recordsRequested:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsRequested:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", bCardAdnInited:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/IccRecords;->bCardAdnInited:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,bCardSmsInited:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/IccRecords;->bCardSmsInited:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccRecords;->log(Ljava/lang/String;)V

    .line 507
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_1

    .line 514
    :cond_0
    :goto_0
    return v0

    .line 511
    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsRequested:Z

    if-ne v1, v0, :cond_2

    iget-boolean v1, p0, Lcom/android/internal/telephony/IccRecords;->bCardAdnInited:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/internal/telephony/IccRecords;->bCardSmsInited:Z

    if-nez v1, :cond_0

    .line 514
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract getSMSCAddr()Ljava/lang/String;
.end method

.method public getServiceProviderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    return-object v0
.end method

.method public getSmsTotalNum()I
    .locals 2

    .prologue
    .line 519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSmsTotalNum : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->mCardSmsMax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccRecords;->log(Ljava/lang/String;)V

    .line 520
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->mCardSmsMax:I

    return v0
.end method

.method public getUsimServiceTable()Lcom/android/internal/telephony/gsm/UsimServiceTable;
    .locals 1

    .prologue
    .line 582
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getVoiceCallForwardingFlag()Z
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailTag:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailNum:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceMessageCount()I
    .locals 1

    .prologue
    .line 492
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->countVoiceMessages:I

    return v0
.end method

.method public getVoiceMessageWaiting()Z
    .locals 1

    .prologue
    .line 483
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->countVoiceMessages:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract handleMessage(Landroid/os/Message;)V
.end method

.method public abstract handlePbParam(III)V
.end method

.method protected abstract handleSmsParam(III)V
.end method

.method public abstract isCspPlmnEnabled()Z
.end method

.method protected abstract log(Ljava/lang/String;)V
.end method

.method public abstract notifyPbParam()V
.end method

.method protected abstract onAllRecordsLoaded()V
.end method

.method public onIccRefreshReset()V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mIccRefreshRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 215
    return-void
.end method

.method protected abstract onRadioOffOrNotAvailable()V
.end method

.method protected abstract onRecordLoaded()V
.end method

.method public abstract onRefresh(Z[I)V
.end method

.method public registerForIccRefreshReset(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 195
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 196
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->mIccRefreshRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 197
    return-void
.end method

.method public registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    const/4 v3, 0x0

    .line 186
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 187
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 189
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsRequested:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 190
    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v3, v3, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 192
    :cond_0
    return-void
.end method

.method public registerForSMSInitCompleted(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 201
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 202
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->SMSInitCompleteRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 203
    return-void
.end method

.method public abstract registerForSubActiveOrDeactive()V
.end method

.method public setMsisdnNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 7
    .parameter "alphaTag"
    .parameter "number"
    .parameter "onComplete"

    .prologue
    .line 242
    iput-object p2, p0, Lcom/android/internal/telephony/IccRecords;->msisdn:Ljava/lang/String;

    .line 243
    iput-object p1, p0, Lcom/android/internal/telephony/IccRecords;->msisdnTag:Ljava/lang/String;

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set MSISDN: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->msisdnTag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->msisdn:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccRecords;->log(Ljava/lang/String;)V

    .line 248
    new-instance v1, Lcom/android/internal/telephony/AdnRecord;

    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->msisdnTag:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->msisdn:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    .local v1, adn:Lcom/android/internal/telephony/AdnRecord;
    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v2, 0x6f40

    const/16 v3, 0x6f4a

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x1e

    invoke-virtual {p0, v6, p3}, Lcom/android/internal/telephony/IccRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    .line 252
    return-void
.end method

.method public abstract setNeedDeleteSmsIndex(I)V
.end method

.method public setVoiceCallForwardingFlag(IZ)V
    .locals 0
    .parameter "line"
    .parameter "enable"

    .prologue
    .line 470
    return-void
.end method

.method public abstract setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setVoiceMessageWaiting(II)V
.end method

.method public unregisterForIccRefreshReset(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mIccRefreshRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 211
    return-void
.end method

.method public unregisterForRecordsLoaded(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 218
    return-void
.end method

.method public unregisterForSMSInitCompleted(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->SMSInitCompleteRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 206
    return-void
.end method
