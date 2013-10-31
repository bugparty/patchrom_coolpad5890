.class public Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
.super Ljava/lang/Object;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SmsTracker"
.end annotation


# instance fields
.field public mData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public mDeliveryIntent:Landroid/app/PendingIntent;

.field public mIndex:I

.field public mMessageRef:I

.field public mRetryCount:I

.field public mSendResult:Z

.field public mSentIntent:Landroid/app/PendingIntent;

.field public mSmsSendLock:Ljava/lang/Object;

.field public mTotal:I

.field public mref:I

.field final synthetic this$0:Lcom/android/internal/telephony/SMSDispatcher;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/SMSDispatcher;Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 3
    .parameter
    .parameter
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/app/PendingIntent;",
            "Landroid/app/PendingIntent;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, data:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 2061
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2052
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSmsSendLock:Ljava/lang/Object;

    .line 2062
    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 2063
    iput-object p3, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    .line 2064
    iput-object p4, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    .line 2065
    iput v2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    .line 2066
    iput-boolean v2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSendResult:Z

    .line 2067
    iput v1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mIndex:I

    .line 2068
    iput v1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mTotal:I

    .line 2069
    return-void
.end method
