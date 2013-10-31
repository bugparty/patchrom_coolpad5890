.class public final Landroid/provider/Telephony$Sms$Intents;
.super Ljava/lang/Object;
.source "Telephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony$Sms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Intents"
.end annotation


# static fields
.field public static final DATA_SMS_RECEIVED_ACTION:Ljava/lang/String; = "android.intent.action.DATA_SMS_RECEIVED"

.field public static final DUAL_DATA_SMS_RECEIVED_ACTION:Ljava/lang/String; = "yulong.intent.action.DUAL_DATA_SMS_RECEIVED"

.field public static final DUAL_PB_PARAM_ON_ICC_ACTION:Ljava/lang/String; = "yulong.provider.Telephony.DUAL_PB_PARAM_ON_ICC_ACTION"

.field public static final DUAL_SIM_FULL_ACTION:Ljava/lang/String; = "yulong.provider.Telephony.DUAL_SIM_FULL"

.field public static final DUAL_SMS_ON_ICC_RECEIVED_ACTION:Ljava/lang/String; = "yulong.provider.Telephony.DUAL_SMS_ON_ICC_RECEIVED"

.field public static final DUAL_SMS_PARAM_ON_ICC_ACTION:Ljava/lang/String; = "yulong.provider.Telephony.DUAL_SMS_PARAM_ON_ICC_ACTION"

.field public static final DUAL_SMS_RECEIVED_ACTION:Ljava/lang/String; = "yulong.provider.Telephony.DUAL_SMS_RECEIVED"

.field public static final DUAL_SMS_REJECTED_ACTION:Ljava/lang/String; = "yulong.provider.Telephony.DUAL_SMS_REJECTED"

.field public static final DUAL_WAP_PUSH_RECEIVED_ACTION:Ljava/lang/String; = "yulong.provider.Telephony.DUAL_WAP_PUSH_RECEIVED"

.field public static final DX_WAP_PUSH_RIGHTS_RECEIVED:Ljava/lang/String; = "android.provider.Telephony.DX_WAP_PUSH_RIGHTS_RECEIVED"

.field public static final EMERGENCY_CDMA_MESSAGE_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.EMERGENCY_CDMA_MESSAGE_RECEIVED"

.field public static final PB_PARAM_ON_ICC_ACTION:Ljava/lang/String; = "android.provider.Telephony.PB_PARAM_ON_ICC_ACTION"

.field public static final RESULT_SMS_GENERIC_ERROR:I = 0x2

.field public static final RESULT_SMS_HANDLED:I = 0x1

.field public static final RESULT_SMS_OUT_OF_MEMORY:I = 0x3

.field public static final RESULT_SMS_UNSUPPORTED:I = 0x4

.field public static final SIM_FULL_ACTION:Ljava/lang/String; = "android.provider.Telephony.SIM_FULL"

.field public static final SMS_CB_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_CB_RECEIVED"

.field public static final SMS_EMERGENCY_CB_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_EMERGENCY_CB_RECEIVED"

.field public static final SMS_ON_ICC_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_ON_ICC_RECEIVED"

.field public static final SMS_PARAM_ON_ICC_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_PARAM_ON_ICC_ACTION"

.field public static final SMS_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"

.field public static final SMS_REJECTED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_REJECTED"

.field public static final SMS_SERVICE_CATEGORY_PROGRAM_DATA_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_SERVICE_CATEGORY_PROGRAM_DATA_RECEIVED"

.field public static final WAP_PUSH_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.WAP_PUSH_RECEIVED"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 514
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getMessagesFromDualIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;
    .locals 13
    .parameter "intentDual"

    .prologue
    const/4 v12, 0x0

    .line 871
    const-string/jumbo v10, "pdus"

    invoke-virtual {p0, v10}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v10

    check-cast v10, [Ljava/lang/Object;

    move-object v4, v10

    check-cast v4, [Ljava/lang/Object;

    .line 872
    .local v4, messages:[Ljava/lang/Object;
    const-string/jumbo v10, "phoneIdKey"

    invoke-virtual {p0, v10}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 873
    .local v8, phoneId:I
    invoke-static {v8}, Lcom/yulong/android/telephony/CPTelephonyManager;->getPhoneTypeByPhoneId(I)I

    move-result v9

    .line 874
    .local v9, phoneType:I
    const-string/jumbo v10, "index"

    const/4 v11, -0x1

    invoke-virtual {p0, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 875
    .local v1, iIndexIccCard:I
    const-string/jumbo v10, "status"

    invoke-virtual {p0, v10, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 876
    .local v2, iReadStatus:I
    const-string/jumbo v10, "type"

    invoke-virtual {p0, v10, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 878
    .local v3, iType:I
    array-length v6, v4

    .line 879
    .local v6, pduCount:I
    const-string v10, "Telephony"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "--getMessagesFromDualIntent,phoneId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",phoneType = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",index = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    array-length v10, v4

    new-array v7, v10, [[B

    .line 884
    .local v7, pduObjs:[[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v10, v4

    if-ge v0, v10, :cond_0

    .line 885
    aget-object v10, v4, v0

    check-cast v10, [B

    check-cast v10, [B

    aput-object v10, v7, v0

    .line 884
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 890
    :cond_0
    new-array v5, v6, [Landroid/telephony/SmsMessage;

    .line 892
    .local v5, msgs:[Landroid/telephony/SmsMessage;
    const/16 v10, -0x3e7

    if-ne v3, v10, :cond_1

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    .line 893
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v6, :cond_4

    .line 895
    aget-object v10, v7, v0

    invoke-static {v10, v8}, Landroid/telephony/SmsMessage;->createDualCardFromPdu([BI)Landroid/telephony/SmsMessage;

    move-result-object v10

    aput-object v10, v5, v0

    .line 893
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 898
    :cond_1
    if-ltz v1, :cond_2

    const/4 v10, 0x1

    if-ne v9, v10, :cond_3

    .line 899
    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v6, :cond_4

    .line 901
    aget-object v10, v7, v0

    invoke-static {v10, v9}, Landroid/telephony/SmsMessage;->createDualFromPdu([BI)Landroid/telephony/SmsMessage;

    move-result-object v10

    aput-object v10, v5, v0

    .line 899
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 904
    :cond_3
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v6, :cond_4

    .line 906
    aget-object v10, v7, v0

    invoke-static {v10, v8}, Landroid/telephony/SmsMessage;->createDualCardFromPdu([BI)Landroid/telephony/SmsMessage;

    move-result-object v10

    aput-object v10, v5, v0

    .line 904
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 909
    :cond_4
    return-object v5
.end method

.method public static final getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;
    .locals 2
    .parameter "intent"

    .prologue
    .line 860
    const-string v0, "Telephony"

    const-string v1, "--invoke,getMessagesFromIntent--"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    invoke-static {p0}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromDualIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v0

    return-object v0
.end method
