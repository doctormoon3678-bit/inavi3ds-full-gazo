.class Lcom/railty/cerfandroid/CallFallbackActivity$1;
.super Ljava/lang/Object;
.source "CallFallbackActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/railty/cerfandroid/CallFallbackActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/railty/cerfandroid/CallFallbackActivity;


# direct methods
.method constructor <init>(Lcom/railty/cerfandroid/CallFallbackActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 37
    iput-object p1, p0, Lcom/railty/cerfandroid/CallFallbackActivity$1;->this$0:Lcom/railty/cerfandroid/CallFallbackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 38
    invoke-static {}, Lcom/railty/cerfandroid/CerfInCallService;->Answer()Z

    return-void
.end method
