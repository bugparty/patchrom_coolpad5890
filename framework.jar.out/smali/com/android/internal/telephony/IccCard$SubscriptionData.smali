.class public Lcom/android/internal/telephony/IccCard$SubscriptionData;
.super Ljava/lang/Object;
.source "IccCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SubscriptionData"
.end annotation


# instance fields
.field public numSubscriptions:I

.field public subscription:[Lcom/android/internal/telephony/IccCard$Subscription;

.field final synthetic this$0:Lcom/android/internal/telephony/IccCard;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/IccCard;I)V
    .locals 3
    .parameter
    .parameter "numSub"

    .prologue
    .line 249
    iput-object p1, p0, Lcom/android/internal/telephony/IccCard$SubscriptionData;->this$0:Lcom/android/internal/telephony/IccCard;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 250
    iput p2, p0, Lcom/android/internal/telephony/IccCard$SubscriptionData;->numSubscriptions:I

    .line 251
    new-array v1, p2, [Lcom/android/internal/telephony/IccCard$Subscription;

    iput-object v1, p0, Lcom/android/internal/telephony/IccCard$SubscriptionData;->subscription:[Lcom/android/internal/telephony/IccCard$Subscription;

    .line 252
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 253
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard$SubscriptionData;->subscription:[Lcom/android/internal/telephony/IccCard$Subscription;

    new-instance v2, Lcom/android/internal/telephony/IccCard$Subscription;

    invoke-direct {v2, p1}, Lcom/android/internal/telephony/IccCard$Subscription;-><init>(Lcom/android/internal/telephony/IccCard;)V

    aput-object v2, v1, v0

    .line 252
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 255
    :cond_0
    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/android/internal/telephony/IccCard$SubscriptionData;)Lcom/android/internal/telephony/IccCard$SubscriptionData;
    .locals 4
    .parameter "from"

    .prologue
    .line 257
    if-eqz p1, :cond_0

    .line 258
    iget v1, p1, Lcom/android/internal/telephony/IccCard$SubscriptionData;->numSubscriptions:I

    iput v1, p0, Lcom/android/internal/telephony/IccCard$SubscriptionData;->numSubscriptions:I

    .line 259
    iget v1, p0, Lcom/android/internal/telephony/IccCard$SubscriptionData;->numSubscriptions:I

    new-array v1, v1, [Lcom/android/internal/telephony/IccCard$Subscription;

    iput-object v1, p0, Lcom/android/internal/telephony/IccCard$SubscriptionData;->subscription:[Lcom/android/internal/telephony/IccCard$Subscription;

    .line 260
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/android/internal/telephony/IccCard$SubscriptionData;->numSubscriptions:I

    if-ge v0, v1, :cond_0

    .line 261
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard$SubscriptionData;->subscription:[Lcom/android/internal/telephony/IccCard$Subscription;

    new-instance v2, Lcom/android/internal/telephony/IccCard$Subscription;

    iget-object v3, p0, Lcom/android/internal/telephony/IccCard$SubscriptionData;->this$0:Lcom/android/internal/telephony/IccCard;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/IccCard$Subscription;-><init>(Lcom/android/internal/telephony/IccCard;)V

    aput-object v2, v1, v0

    .line 262
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard$SubscriptionData;->subscription:[Lcom/android/internal/telephony/IccCard$Subscription;

    aget-object v1, v1, v0

    iget-object v2, p1, Lcom/android/internal/telephony/IccCard$SubscriptionData;->subscription:[Lcom/android/internal/telephony/IccCard$Subscription;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/IccCard$Subscription;->copyFrom(Lcom/android/internal/telephony/IccCard$Subscription;)Lcom/android/internal/telephony/IccCard$Subscription;

    .line 260
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 265
    .end local v0           #i:I
    :cond_0
    return-object p0
.end method
