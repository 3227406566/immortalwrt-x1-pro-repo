include $(TOPDIR)/rules.mk

PKG_NAME:=ua3f
PKG_VERSION:=1.0
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/SunBK201/UA3F.git
PKG_SOURCE_VERSION:=HEAD
PKG_MIRROR_HASH:=skip

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=golang/host
PKG_BUILD_PARALLEL:=1
PKG_USE_MIPS16:=0

GO_PKG:=github.com/SunBK201/UA3F
GO_PKG_BUILD_PKG:=github.com/SunBK201/UA3F/cmd/ua3f

include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/golang/golang-package.mk

define Package/ua3f
  SECTION:=net
  CATEGORY:=Network
  TITLE:=UA3F - HTTP User-Agent modifier for TProxy
  DEPENDS:=$(GO_ARCH_DEPENDS) +kmod-ipt-tproxy +kmod-nft-tproxy +kmod-ipt-nfqueue +kmod-ipt-conntrack +ipset
endef

define Package/ua3f/description
  UA3F, modify HTTP User-Agent under tproxy mode, work with clash.
endef

define Package/ua3f/install
	$(call GoPackage/Package/Install/Bin,$(PKG_INSTALL_DIR))
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/bin/ua3f $(1)/usr/bin/ua3f

	$(INSTALL_DIR) $(1)/etc/init.d
	$(INSTALL_CONF) ./files/ua3f.init $(1)/etc/init.d/ua3f

	$(INSTALL_DIR) $(1)/etc/config
	$(INSTALL_CONF) ./files/ua3f.config $(1)/etc/config/ua3f
endef

$(eval $(call GoPackage,ua3f))
