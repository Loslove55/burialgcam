.class final synthetic Lcaw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcay;


# direct methods
.method public constructor <init>(Lcay;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcaw;->a:Lcay;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcaw;->a:Lcay;

    iget-object v0, v0, Lcay;->c:Ljqn;

    invoke-interface {v0}, Ljqn;->H()V

    return-void
.end method
