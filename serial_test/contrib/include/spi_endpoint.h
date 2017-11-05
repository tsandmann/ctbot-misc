#ifndef SPI_ENDPOINT_H
#define SPI_ENDPOINT_H

#include "logging.h"
#include <cstdint>
#include <string>


class SpiEndpoint {
	tslog::Log<tslog::L_INFO, true, false> logger;

protected:
	static constexpr uint8_t SPI_CPHA {1};
	static constexpr uint8_t SPI_CPOL {2};

	int fd;
	struct spi_ioc_transfer* p_tr;

public:
	static constexpr uint8_t MODE_0 {0 | 0};
	static constexpr uint8_t MODE_1 {0 | SPI_CPHA};
	static constexpr uint8_t MODE_2 {SPI_CPOL | 0};
	static constexpr uint8_t MODE_3 {SPI_CPOL | SPI_CPHA};

	SpiEndpoint(const std::string& device, uint8_t mode, uint32_t speed_hz, uint8_t bits_per_word = 8, uint32_t delay = 0, uint8_t cs = 0);
	~SpiEndpoint();

	bool transfer(void* rx_buf, const void* tx_buf, size_t length) const noexcept;
};

#endif /* SPI_ENDPOINT_H */
